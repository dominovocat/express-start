const getHome = (req, res) => {
  console.log(req.params.id);
  res.send("Hello World");
};
//module.exports = getHome;
module.exports.getHome = getHome;
