const getHome = (req, res) => {
  console.log(req.params.id);
  res.status(200).send(id:params.id);
};
//module.exports = getHome;
module.exports.getHome = getHome;
