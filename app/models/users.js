'use strict';

let mongoose = require('./index');
let Schema = mongoose.Schema;

let userSchema = new Schema({
    email: String,
    name: String,
    password: String,
    passwordConformation: String,
});

let userModel = mongoose.model('User', userSchema);

module.exports = userModel;