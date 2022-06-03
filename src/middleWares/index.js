const yup = require('yup');
const paramId = yup.number().positive().required();

module.exports.middleWare = (req, res, next) => {
  const verdict = paramId.isValidSync(req.params.id);
  if (verdict) {
    return next();
  }
  res.status(400).send('Error');
};
