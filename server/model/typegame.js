const mongoose = require('mongoose');
const MSchema = mongoose.Schema;

const typegameSchema = new MSchema({
    type_name: String,
    description: String,
    gameID: String,
});

module.exports = mongoose.model('TypeGame', typegameSchema)