const express = require("express")
const app = express()

require('dotenv').config()

app.use(express.urlencoded({extended: false}))
app.use(express.json())




const actionsRouter = require('./routes/actions.router')
const cartonsRouter = require('./routes/cartons.router')
const competitionsRouter = require('./routes/competitions.router')
const equipesRouter = require('./routes/equipes.router')
const joueursRouter = require('./routes/joueurs.router')
const matchesRouter = require('./routes/matches.router')
const passesRouter = require('./routes/passes.router')
const possessionsRouter = require('./routes/possessions.router')
const general_gRouter = require('./routes/general_g.router')
const general_domRouter = require('./routes/general_dom.router')
const general_extRouter = require('./routes/general_ext.router')

app.use("/api/v1/actions", actionsRouter)
app.use("/api/v1/cartons", cartonsRouter)
app.use("/api/v1/competitions", competitionsRouter)
app.use("/api/v1/equipes", equipesRouter)
app.use("/api/v1/joueurs", joueursRouter)
app.use("/api/v1/matches", matchesRouter)
app.use("/api/v1/passes", passesRouter)
app.use("/api/v1/possessions", possessionsRouter)
app.use("/api/v1/general_g", general_gRouter)
app.use("/api/v1/general_dom", general_domRouter)
app.use("/api/v1/general_ext", general_extRouter)



app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something went wrong!');
});
  

const PORT = process.env.PORT || 5000

app.listen(PORT, () => {
    console.log("Server is running....");
}).on('error', (err) => {
    console.error('Server error:', err);
});