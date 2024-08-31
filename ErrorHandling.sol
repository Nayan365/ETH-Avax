// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LibraryManagement {
    struct Book {
        uint id;
        string title;
        bool isAvailable;
    }

    mapping(uint => Book) public books;
    uint public bookCount;

    event BookAdded(uint id, string title);
    event BookBorrowed(uint id);
    event BookReturned(uint id);

    function addBook(string memory title) public {
        bookCount++;
        books[bookCount] = Book(bookCount, title, true);
        emit BookAdded(bookCount, title);
    }

    function borrowBook(uint id) public {
        require(id > 0 && id <= bookCount, "Book ID is not valid.");
        require(books[id].isAvailable, "Book is not available.");

        books[id].isAvailable = false;
        emit BookBorrowed(id);
    }

    function returnBook(uint id) public {
        require(id > 0 && id <= bookCount, "Book ID is not valid.");
        assert(!books[id].isAvailable);

        books[id].isAvailable = true;
        emit BookReturned(id);
    }

    function removeBook(uint id) public {
        require(id > 0 && id <= bookCount, "Book ID is not valid.");

        delete books[id];
        bookCount--;
        if (bookCount < 0) {
            revert("Book count cannot be negative.");
        }
    }
}
