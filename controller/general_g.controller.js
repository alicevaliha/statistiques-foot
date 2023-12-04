const pool = require("../database/index")
const general_gController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from v_GenAll_stats group by equipe , competition_buts ")
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
            const [rows, fields] = await pool.query("select * from v_GenAll_stats where id_equipe = ? group by equipe , competition_buts ", [id])
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
    

}

module.exports = general_gController