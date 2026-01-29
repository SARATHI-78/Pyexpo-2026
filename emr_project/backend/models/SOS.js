const mongoose = require("mongoose");


const SOSSchema = new mongoose.Schema({
userId: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
location: {
lat: Number,
lng: Number
},
status: { type: String, default: "ACTIVE" },
createdAt: { type: Date, default: Date.now }
});


module.exports = mongoose.model("SOS", SOSSchema);