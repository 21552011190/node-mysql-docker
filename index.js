const express = require('express')

const app = express()


app.get('/', (req, res)=>{
    return res.send({
        success: true,
        message: 'Backend is running!'
    })
})

app.listen(process.env.PORT || process.env.APP_PORT, ()=>{
    console.log(`App listening on port ${process.env.PORT || process.env.APP_PORT}`);
})