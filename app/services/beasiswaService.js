const {
    Model
} = require('sequelize')
const {
    Beasiswa
} = require('../models')

module.exports = {
    async getAll() {
        try {
            return await Beasiswa.findAll()
        } catch (error) {
            throw error;
        }
    },

    async getById(id) {
        try {
            return await Beasiswa.findOne({
                where: {
                    id: id
                }
            })
        } catch (error) {
            throw error;
        }
    },

    async createBeasiswa(data) {
        try {
            return await Beasiswa.create(data)
        } catch (error) {
            throw error;
        }
    },

    async updateBeasiswa(id, updatex) {
        try {
            console.log(id)
            return await Beasiswa.update(updatex, {
                where: {
                    id: id
                }
            })
        } catch (error) {
            throw error;
        }
    },

    async deleteBeasiswa(id) {
        try {
            return await Beasiswa.destroy({
                where: {
                    id: id
                }
            })
        } catch (error) {
            throw error;
        }
    },
}