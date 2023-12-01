const pool = require("../database/index")
const actionController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from action")
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
            const [rows, fields] = await pool.query("select * from action where id_action = ?", [id])
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
            const { typeaction,id_joueur,id_matches} = req.body
            const sql = "INSERT INTO action (typeaction,id_joueur,id_matches) VALUES (?,?,?)"
            const [rows, fields] = await pool.query(sql, [typeaction,id_joueur,id_matches])
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
            const { typeaction,id_joueur,id_matches} = req.body
            const { id } = req.params
            const sql = "update action set typereaction = ? , id_joueur = ? , id_matches = ? where id_action = ?"
            const [rows, fields] = await pool.query(sql, [typeaction,id_joueur,id_matches,id])
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
            const [rows, fields] = await pool.query("delete from action where id_action = ?", [id])
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

module.exports = actionController