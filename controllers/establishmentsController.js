const establishmentsService = require('../services/establishmentsServices')

const getAll = async (req, res) => {
  try {
    const establishments = await establishmentsService.getAll()
    return res.status(200).json(establishments)
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
}

const getById = async (req, res) => {
  try {
    const { id } = req.params
    const establishment = await establishmentsService.getById(Number(id))
    if (establishment.length === 0) return res.status(404).json({ message: 'establishment not found' })
    return res.status(200).json(establishment)
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
}

module.exports = {
  getAll,
  getById
}
