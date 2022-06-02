const establishmentsService = require('../services/establishmentsServices')

const getAll = async (req, res) => {
  try {
    const establishments = await establishmentsService.getAll()
    return res.status(200).json(establishments)
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
}

module.exports = {
  getAll
}
