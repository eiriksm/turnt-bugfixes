module.exports = function gtoa(og, sg) {
  if (!og || !sg) {
    throw new Error('values plz');
  }
  return (og - sg) * 131;
}
