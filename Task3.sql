Use elevatelabs;
-- Creating a table 
CREATE TABLE Library (
 book_id INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(200) NOT NULL,
 author VARCHAR(150) NOT NULL,
 genre VARCHAR(100),
 publisher VARCHAR(150),
 published_year INT,
 isbn VARCHAR(20) UNIQUE,
 copies_available INT DEFAULT 1
);
SELECT * FROM Library;

INSERT INTO Library (title, author, genre, publisher, published_year, isbn, copies_available)
VALUES
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'Little, Brown and Company', 1951, '9780316769488', 4);

INSERT INTO Library (title, author, genre, publisher, published_year, isbn, copies_available)
VALUES
('Moby Dick', 'Herman Melville', 'Adventure', 'Harper & Brothers', 1851, '9781503280786', 2);

INSERT INTO Library (title, author, genre, publisher, published_year, isbn, copies_available)
VALUES
('The Alchemist', 'Paulo Coelho', 'Philosophical Fiction', 'HarperOne', 1988, '9780061122415', 5);

INSERT INTO Library (title, author, genre, publisher, published_year, isbn, copies_available)
VALUES
('War and Peace', 'Leo Tolstoy', 'Historical Fiction', 'The Russian Messenger', 1869, '9780199232765', 3);

INSERT INTO Library (title, author, genre, publisher, published_year, isbn, copies_available)
VALUES
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 'Bloomsbury', 1997, '9780747532699', 7);

SELECT * FROM Library;

SELECT title  author, published_year FROM Library;

SELECT * FROM library
WHERE published_year > 1950;

SELECT * FROM library
WHERE genre = 'Fantasy' AND published_year > 1990;

SELECT * FROM Library
WHERE author = 'George Orwell' OR genre = 'Romance';

SELECT * FROM Library
WHERE title LIKE 'The%';

SELECT * FROM Library
WHERE published_year BETWEEN 1900 AND 2000;

SELECT * FROM Library
ORDER BY published_year ASC;

SELECT * FROM Library
ORDER BY title DESC;

SELECT * FROM Library
ORDER BY published_year DESC;

SELECT * FROM Library
ORDER BY author ASC, title DESC;