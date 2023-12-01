const pool = require("../database/index")
const equipeController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from equipe")
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
            const [rows, fields] = await pool.query("select * from equipe where id_equipe = ?", [id])
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
            const { nomEquipe } = req.body
            const sql = "INSERT INTO equipe (nomEquipe) VALUES (?)"
            const [rows, fields] = await pool.query(sql, [nomEquipe])
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
            const { nomEquipe } = req.body
            const { id } = req.params
            const sql = "update equipe set nomEquipe = ? where id_equipe = ?"
            const [rows, fields] = await pool.query(sql, [nomEquipe, id])
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
            const [rows, fields] = await pool.query("delete from equipe where id_equipe = ?", [id])
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

module.exports = equipeController