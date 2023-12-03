const pool = require("../database/index")
const joueurController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from joueur")
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
            const [rows, fields] = await pool.query("select * from joueur where id_joueur = ?", [id])
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
            const { nom,id_equipe } = req.body
            const sql = "INSERT INTO joueur (nom,id_equipe) VALUES (?, ?)"
            const [rows, fields] = await pool.query(sql, [nom,id_equipe])
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
            const { nomjoueur , id_equipe} = req.body
            const { id } = req.params
            const sql = "update joueur set nom = ? , id_equipe = ? where id_joueur = ?"
            const [rows, fields] = await pool.query(sql, [nomjoueur, id_equipe,id])
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
            const [rows, fields] = await pool.query("delete from joueur where id_joueur = ?", [id])
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

module.exports = joueurController