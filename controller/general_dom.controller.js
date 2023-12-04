const pool = require("../database/index")
const general_domController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from v_Gen_dom_stats group by nomEquipe_dom , nomcompetition ")
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
            const [rows, fields] = await pool.query("select * from v_Gen_dom_stats where id_equipe = ? group by nomEquipe_dom , nomcompetition ", [id])
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

module.exports = general_domController