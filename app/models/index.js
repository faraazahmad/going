/*
    This file estabilishes a connection to the databse
    and exports the instance for the models to use.
*/

let mongoose = require('mongoose');

const options = {
    poolSize: 10, // maintain upto 10 socket connections
};

// connect to database
mongoose.connect("mongodb://username:password@host:port/database", options);

module.export = mongoose;