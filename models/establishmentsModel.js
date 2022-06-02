const connection = require('./connection')

const getAll = async () => {
  try {
    const [establishments] = await connection.query('SELECT * FROM parking.establishments')
    return establishments
  } catch (error) {
    console.log(error.message)
    return process.exit(1)
  }
}

const getById = async (id) => {
  try {
    const [establishment] = await connection
      .query('SELECT * FROM parking.establishments WHERE establishments_id = ?', [id])
    return establishment
  } catch (error) {
    console.log(error.message)
    return process.exit(1)
  }
}

module.exports = {
  getAll,
  getById
}
