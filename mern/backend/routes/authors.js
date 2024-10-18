const express = require('express');
const router = express.Router();
const Author = require('../model/authorModel');

// POST /authors
router.post('/', async (req, res) => {
    try {
        const { _id, name, age, totalBooks, description } = req.body;
        const author = new Author({ _id, name, age, totalBooks, description });
        await author.save();
        res.status(201).send({ message: `Author ${name} Saved` });
    } catch (err) {
        res.status(500).send(err.message);
    }
});

// GET /authors
router.get('/', async (req, res) => {
    try {
        const authors = await Author.find();
        res.status(200).send(authors);
    } catch (err) {
        res.status(500).send(err.message);
    }
});

// DELETE /authors/:id
router.delete('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const author = await Author.findByIdAndDelete(id);
        if (!author) {
            return res.status(404).send({ message: 'Author not found' });
        }
        res.status(200).send({ message: `Author ${author.name} Deleted` });
    } catch (err) {
        res.status(500).send(err.message);
    }
});

module.exports = router;
