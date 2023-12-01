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

app.use("/api/v1/actions", actionsRouter)
app.use("/api/v1/cartons", cartonsRouter)
app.use("/api/v1/competitions", competitionsRouter)
app.use("/api/v1/equipes", equipesRouter)
app.use("/api/v1/joueurs", joueursRouter)
app.use("/api/v1/matches", matchesRouter)
app.use("/api/v1/passes", passesRouter)
app.use("/api/v1/possessions", possessionsRouter)

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