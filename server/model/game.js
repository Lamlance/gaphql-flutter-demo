const mongoose = require('mongoose');
const MSchema = mongoose.Schema;

const gameSchema = new MSchema({
    name: String,
    price: Number,
    publisher: String,
    game_type: String,
});

module.exports = mongoose.model('Game', gameSchema)