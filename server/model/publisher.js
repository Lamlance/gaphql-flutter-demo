const mongoose = require('mongoose');
const MSchema = mongoose.Schema;

const publisherSchema = new MSchema({
    publisher_name: String,
    location: String,
    since: Number,
    gameID: String,
});

module.exports = mongoose.model('Publisher', publisherSchema)