const express = require("express");
const User = require("../models/User");
const auth = require("../middleware/auth");
const router = express.Router();


router.get("/profile", auth, async (req, res) => {
const user = await User.findById(req.user.id).select("-password");
res.json(user);
});


router.put("/profile", auth, async (req, res) => {
await User.findByIdAndUpdate(req.user.id, req.body);
res.json({ message: "Profile updated" });
});


module.exports = router;