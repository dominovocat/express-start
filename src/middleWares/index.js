module.exports.middleWare = (req, res, next) => {
  const verdict = !isNan(Number(req.params.id));
  if (verdict) {
    next();
  }
  res.send('Error')
};
