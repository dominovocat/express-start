
module.exports.createArray=(newName)=>{
file.add(newName,[]);
}

module.exports.addCell=(arrayName,data)=>{
  const array = file.find(arrayName);
  array.push(data);
}