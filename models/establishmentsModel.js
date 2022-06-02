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

module.exports = {
  getAll
}
