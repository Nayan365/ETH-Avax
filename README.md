# Library-management system using solidity
## Module: Functions and Errors - ETH + AVAX

**There are three Error Handling methods in Solidity whose implementation and explanation is shown below.**
1. Require
2. Assert
3. Revert


# Library Management Smart Contract

This repository contains a Solidity smart contract for managing a library system. The LibraryManagement contract allows users to add, borrow, return, and remove books.

## Features

**Add Books**: Add new books to the library.
**Borrow Books**: Borrow available books.
**Return Books**: Return borrowed books.
**Remove Books**: Remove books from the library.

## Contract Structure

### Book Struct

The Book struct represents a book in the library with the following properties:

'id' (uint): Unique identifier for the book.
'title' (string): Title of the book.
'isAvailable' (bool): Availability status of the book.

### State Variables

**mapping(uint => Book) public book**: A mapping to store books by their unique ID.
**uint public bookCount**: A counter for tracking the number of books in the library.

### Events

The contract emits the following events:

BookAdded(uint id, string title): Triggered when a new book is added.
BookBorrowed(uint id): Triggered when a book is borrowed.
BookReturned(uint id): Triggered when a book is returned.
BookRemoved(uint id, string title): Triggered when a book is removed from the library.

### Functions

#### 1. addBook(string memory title)

Adds a new book to the library.

- **Parameters**: 
  title: The title of the book to be added.

#### 2. borrowBook(uint id)

Allows a user to borrow a book.

- **Parameters**:<br>
id: The ID of the book to borrow.
- **Reverts**:<br> 
If the book ID is invalid.
If the book is not available.

#### 3. returnBook(uint id)

Allows a user to return a borrowed book.

**Parameters**:<br>
id: The ID of the book to return.
**Reverts**: 
If the book ID is invalid.
If the book is already available.

#### 4. removeBook(uint id)

Removes a book from the library.

**Parameters**:<br>
id:The ID of the book to remove.
**Reverts**:<br> 
If the book ID is invalid.

# Deployment Instructions
1. Open Remix IDE.
2. Create a new file named LibraryManagement.sol and copy the contract code into it.
3. In the "Solidity Compiler" tab, select version 0.8.0 and compile the contract.
4. Navigate to the "Deploy & Run Transactions" tab.
5. Deploy the contract by selecting LibraryManagement from the dropdown and clicking on the "Deploy" button.



## Author
Nayan Kumar





