require('dotenv').config()
const express = require('express')
const cors = require('cors')
const app = express()
const port = process.env.PORT || 5000
const beasiswaController = require('../app/controllers/beasiswaController')

app.use(express.json())
app.use(cors())
// Routing
app.get('/beasiswa', beasiswaController.getAll)
app.get('/beasiswa/:id', beasiswaController.getById)
app.post('/beasiswa', beasiswaController.createData)
app.put('/beasiswa/:id', beasiswaController.updateData)
app.delete('/beasiswa/:id', beasiswaController.deleteData)


app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})