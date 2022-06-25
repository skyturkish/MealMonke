
// IMPORTS FROM PACKAGES
const express = require('express')
const mongoose = require('mongoose')
// IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth')

// INIT
const PORT = 3000
const app = express()
const DB = "mongodb+srv://sky:<your password>@cluster0.oxecr.mongodb.net/?retryWrites=true&w=majority"
//middleware
app.use(express.json())
app.use(authRouter)

mongoose.connect(DB).then(() => {
    console.log("Connection Successfull")
}).catch((e) => {
    console.log(e)
})


// herhangi bir problem çıkarsa kendi ip'ni yaz ---> ipconfig on cmd    192.168.0.21
//kendi ip'mi yazınca internet sitesinde görebiliyorum
// galiba kendi ip'mi yazsam da yazmasam da görebiliyorum
app.listen(PORT, "0.0.0.0", () =>{
    console.log('connected at port' + PORT )
})