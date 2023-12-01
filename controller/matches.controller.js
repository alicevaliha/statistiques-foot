const pool = require("../database/index")
const matchesController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from matches")
            res.json({
                data: rows
            })
        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })
        }
    },
    getById: async (req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("select * from matches where id_matches = ?", [id])
            res.json({
                data: rows
            })
        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })
        }
    },
    create: async (req, res) => {
        try {
            const { id_competition,id_equipe1,id_equipe2,datematches } = req.body
            const sql = "INSERT INTO matches (id_competition,id_equipe1,id_equipe2,datematches) VALUES (?,?,?,?)"
            const [rows, fields] = await pool.query(sql, [id_competition,id_equipe1,id_equipe2,datematches])
            res.json({
                data: rows
            })
        } catch (error) {
            console.error(error);
            res.status(500).json({
                status: "error",
                message: "Une erreur est survenue lors de la création des données.",
                error: error.message // Ajouter le message d'erreur SQL à la réponse
            })
        }
    },    
    update: async (req, res) => {
        try {
            const { id_competition,id_equipe1,id_equipe2,datematches} = req.body
            const { id } = req.params
            const sql = "update matches set id_competitioin = ? , id_equipe1 = ? , id_equipe2 = ? , datematches = ? where id_matches = ?"
            const [rows, fields] = await pool.query(sql, [id_competition,id_equipe1,id_equipe2,datematches,id])
            res.json({
                data: rows
            })
        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })
        }
    }, 
    delete: async (req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("delete from matches where id_matches = ?", [id])
            res.json({
                data: rows
            })
        } catch (error) {
            console.log(error)
            res.json({
                status: "error"
            })
        }
    }
    

}

module.exports = matchesController