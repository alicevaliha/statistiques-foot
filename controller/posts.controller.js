const pool = require("../database/index")
const personneController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from personne")
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
            const [rows, fields] = await pool.query("select * from personne where idpersonne = ?", [id])
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
            const { nom, surnom } = req.body
            const sql = "INSERT INTO personne (nom, surnom) VALUES (?, ?)"
            const [rows, fields] = await pool.query(sql, [nom, surnom])
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
            const { title, content } = req.body
            const { id } = req.params
            const sql = "update personne set title = ?, content = ? where idpersonne = ?"
            const [rows, fields] = await pool.query(sql, [title, content, id])
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
            const [rows, fields] = await pool.query("delete from personne where id = ?", [id])
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

module.exports = personneController