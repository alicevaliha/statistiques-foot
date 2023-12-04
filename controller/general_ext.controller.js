const pool = require("../database/index")
const general_extController = {
    getAll: async (req, res) => {
        try {
            const [rows, fields] = await pool.query("select * from v_Gen_ext_stats group by nomequipe , nomcompetition ")
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
            const [rows, fields] = await pool.query("select * from v_Gen_ext_stats where id_equipe = ? group by nomequipe , nomcompetition ", [id])
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

module.exports = general_extController