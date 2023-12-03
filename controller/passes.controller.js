const pool = require("../database/index")
const passesController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from passes")
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
            const [rows, fields] = await pool.query("select * from passes where id_passes = ?", [id])
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
            const { id_equipe,id_matches,reussite} = req.body
            const sql = "INSERT INTO passes (id_equipe,id_matches,reussite) VALUES (?,?,?)"
            const [rows, fields] = await pool.query(sql, [id_equipe,id_matches,reussite])
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
            const { id_equipe,id_matches,pourcentage} = req.body
            const { id } = req.params
            const sql = "update passes set id_equipe = ? , id_matches = ? , reussites = ? where id_passes = ?"
            const [rows, fields] = await pool.query(sql, [id_equipe,id_matches,pourcentage,id])
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
            const [rows, fields] = await pool.query("delete from passes where id_passes = ?", [id])
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

module.exports = passesController