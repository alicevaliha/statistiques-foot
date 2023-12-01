const pool = require("../database/index")
const competitionController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from competition")
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
            const [rows, fields] = await pool.query("select * from competition where id_competition = ?", [id])
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
            const { nomcompetition,datedeb,datefin } = req.body
            const sql = "INSERT INTO competition (nomcompetition,datedeb,datefin) VALUES (?, ?,?)"
            const [rows, fields] = await pool.query(sql, [nomcompetition,datedeb,datefin])
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
            const { nomcompetition , datedeb, datefin} = req.body
            const { id } = req.params
            const sql = "update competition set nomcompetition = ? , datedeb = ? , datefin = ? where id_competition = ?"
            const [rows, fields] = await pool.query(sql, [nomcompetition, datedeb,datefi,id])
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
            const [rows, fields] = await pool.query("delete from competition where id_competition = ?", [id])
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

module.exports = competitionController