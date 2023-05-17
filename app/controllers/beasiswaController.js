const {
    response
} = require('express')
const beasiswaService = require('../services/beasiswaService')

module.exports = {
    async getAll(req, res) {
        try {
            const data = await beasiswaService.getAll()
            res.status(200).json({
                status: true,
                message: "Data Berhasil di Tampilkan!",
                data: data
            })
        } catch (error) {
            res.status(404).json({
                status: false,
                message: error.message
            })
        }
    },

    async getById(req, res) {
        try {
            const data = await beasiswaService.getById(req.params.id)
            res.status(200).json({
                status: true,
                message: "Data Berhasil di Tampilkan!",
                data: data
            })
        } catch (error) {
            res.status(404).json({
                status: false,
                message: error.message
            })
        }
    },

    async createData(req, res) {
        try {
            const data = await beasiswaService.createBeasiswa(req.body)
            res.status(200).json({
                status: true,
                message: "Data Berhasil di Tampilkan!",
                data: data
            })
        } catch (error) {
            res.status(404).json({
                status: false,
                message: error.message
            })
        }
    },

    async updateData(req, res) {
        try {
            console.log(req.body)

            await beasiswaService.updateBeasiswa(req.params.id, req.body)
            console.log("salah")
            const data = await beasiswaService.getById(req.params.id)
            res.status(200).json({
                status: true,
                message: "Data Berhasil di Tampilkan!",
                data: data
            })
        } catch (error) {
            console.log(error)
            res.status(404).json({
                status: false,
                message: "error.message"
            })
        }
    },

    async deleteData(req, res) {
        try {
            const data = await beasiswaService.deleteBeasiswa(req.params.id)
            if (data === 1) {
                res.status(200).json({
                    status: true,
                    message: "Data Berhasil di Hapus!",
                    data: data
                })

            } else {
                res.status(404).json({
                    status: false,
                    message: "data not found"
                })
            }
        } catch (error) {
            res.status(404).json({
                status: false,
                message: error.message
            })
        }
    },
}