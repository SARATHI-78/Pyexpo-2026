const express = require("express");
const SOS = require("../models/SOS");
const auth = require("../middleware/auth");
const router = express.Router();


router.post("/", auth, async (req, res) => {
const sos = await SOS.create({
userId: req.user.id,
location: req.body,
});
res.json({ message: "SOS sent", sos });
});


router.get("/history", auth, async (req, res) => {
const history = await SOS.find({ userId: req.user.id });
res.json(history);
});


module.exports = router;