const express = require("express");
const { getHome } = require("./src/routers");

const app = express();

app.get('/',getHome)

app.listen(5000,()=>{console.log('Server started')});
