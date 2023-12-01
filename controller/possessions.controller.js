const pool = require("../database/index")
const possessionController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from possession")
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
            const [rows, fields] = await pool.query("select * from possession where id_possession = ?", [id])
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
            const { id_equipe,id_matches,pourcentage} = req.body
            const sql = "INSERT INTO possession (id_equipe,id_matches,pourcentage) VALUES (?,?,?)"
            const [rows, fields] = await pool.query(sql, [id_equipe,id_matches,pourcentage])
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
            const sql = "update possession set id_equipe = ? , id_matches = ? , pourcentage = ? where id_possession = ?"
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
            const [rows, fields] = await pool.query("delete from possession where id_possession = ?", [id])
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

module.exports = possessionController