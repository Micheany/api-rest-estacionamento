const establishmentsModel = require('../models/establishmentsModel')

const getAll = async () => {
  const establishments = await establishmentsModel.getAll()
  return establishments
}

const getById = async (id) => {
  const establishment = await establishmentsModel.getById(id)
  return establishment
}

module.exports = {
  getAll,
  getById
}
