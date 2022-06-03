const express = require("express");
const { getHome } = require("./src/routers");
const { middleWare } = require("./src/middleWares/index");

const app = express();

app.get("/users:id/get", middleWare, getHome);

app.listen(5000, () => {
  console.log("Server started");
});
