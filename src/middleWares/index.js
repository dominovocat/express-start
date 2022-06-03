module.exports.middleWare = (req, res, next) => {
  const verdict = !isNan(Number(req.params.id));
  if (verdict) {
    return next();
  }
  res.status(400).send('Error');
};
