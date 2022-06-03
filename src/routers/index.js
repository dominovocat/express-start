const getHome = (req, res) => {
  console.log("Hello World");
  res.send("Hello World");
};
//module.exports = getHome;
module.exports.getHome=getHome;