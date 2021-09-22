CREATE TABLE Authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE BooksAuthors (
    author_id INTEGER NOT NULL,
    book_id  INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(id),
    FOREIGN KEY (book_id) REFERENCES Books(id)
);

INSERT INTO Authors
    (name, country)
VALUES
    ('J.D. Salinger', 'USA'),
    ('F. Scott. Fitzgerald', 'USA'),
    ('Jane Austen', 'UK'),
    ('Scott Hanselman', 'USA'),
    ('Jason N. Gaylord', 'USA'),
    ('Pranav Rastogi', 'India'),
    ('Todd Miranda', 'USA'),
    ('Christian Wenz', 'USA')
;

INSERT INTO Books
    (title)
VALUES
    ('The Catcher in the Rye'),
    ('Nine Stories'),
    ('Franny and Zooey'),
    ('The Great Gatsby'),
    ('Tender is the Night'),
    ('Pride and Prejudice'),
    ('Professional ASP.NET 4.5 in C# and VB')
;

INSERT INTO BooksAuthors
    (book_id, author_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8)
;



/*
 * TODO: Add another query here to find all Authors of the Book with id=7. 
 */


SELECT * FROM Books;

SELECT * FROM Authors;

SELECT * FROM BooksAuthors;

SELECT Authors.name, Books.title FROM BooksAuthors
JOIN Books ON Books.id = BooksAuthors.book_id
JOIN Authors ON Authors.id = BooksAuthors.author_id
WHERE BooksAuthors.book_id = 7;