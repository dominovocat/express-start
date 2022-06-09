const { Low, JSONFile } = require("lowdb");
const path = require("path");


const adapter = new JSONFile(file)
const file = join(__dirname,"db.json");
const db = new Low();

db.read();

module.exports=db;
