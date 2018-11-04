'use strict'

const Book = use('App/Models/Book')

class BookController {
    async index() {
        return await Book.all()
    }
}

module.exports = BookController
