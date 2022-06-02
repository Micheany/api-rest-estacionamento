const establishmentsModel = require('../models/establishmentsModel')

const getAll = async () => {
  const establishments = await establishmentsModel.getAll()
  return establishments
}

module.exports = {
  getAll
}
