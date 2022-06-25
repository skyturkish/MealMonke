const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    name: {
        required: true,
        type: String,
        trim:true, // => // '    sky    ' => 'sky'
    },
    email: {
        required: true,
        type: String,
        trim:true, 
        validate: {
            validator:(value) => {
                const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message: "Please enter a valid email adress !"
        },     
    },
    mobileNo: {
        type: Number,
        default: 0,
    },
    address: {
        type: String,
        default: ' ',
    },
    password: {
        required: true,
        type: String,

    },
    type:{ // you will add admin,seller in the future 
        type: String,
        default: 'user'
    },
    // cart
}
)

const User = mongoose.model('User', userSchema)

module.exports = User