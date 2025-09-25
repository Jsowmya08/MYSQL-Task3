-- Switch to (or create) the database
USE elevatelabs;

-- Creating a table 
CREATE TABLE Library (
 book_id INT AUTO_INCREMENT PRIMARY KEY, //Unique ID for each book(auto increment)
 title VARCHAR(200) NOT NULL,  //books title (cannot be empty)
 author VARCHAR(150) NOT NULL, //books author (cannot be empty)
 genre VARCHAR(100),  //type/category of book(optional)
 publisher VARCHAR(150), // who published the book (optional)
 published_year INT,  //year of publication ( stored as INT )
 isbn VARCHAR(20) UNIQUE, //unique book identifier (must be unique)
 copies_available INT DEFAULT 1 //number of copies in library (default 1)
);

--SELECT query
SELECT * FROM Library; //Retrives all columns and rows from the Library table.

--INSERT TABLES
INSERT INTO Library (title, author, genre, publisher, published_year, isbn, copies_available)
VALUES
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'Little, Brown and Company', 1951, '9780316769488', 4); // inserting the data in the table library.

SELECT * FROM Library; // shows all the books inserted into the library

-- WHERE: books published after 1950
SELECT * FROM library
WHERE published_year > 1950; // Retirves all the books published after 1950


-- WHERE + AND: fantasy books published after 1990
SELECT * FROM library
WHERE genre = 'Fantasy' AND published_year > 1990; //Retrieves all books in the Fantasy genre that were published after 1990.


-- WHERE + OR: either by 'George Orwell' OR genre is 'Romance'
SELECT * FROM Library
WHERE author = 'George Orwell' OR genre = 'Romance'; //Retrieves books either written by George Orwell OR belonging to the Romance genre.


-- LIKE: find books whose title starts with 'The'
SELECT * FROM Library
WHERE title LIKE 'The%';//Retrieves all books whose title starts with "The".% is a wildcard, so it means anything can follow “The”.


-- BETWEEN: books published between 1900 and 2000
SELECT * FROM Library
WHERE published_year BETWEEN 1900 AND 2000;  //Retrieves all books published between 1900 and 2000 (inclusive).

-- Order by year (ascending)
SELECT * FROM Library
ORDER BY published_year ASC; // Shows all books sorted by year of publication (ascending) (oldest first).

-- Order by year (descending)
SELECT * FROM Library
ORDER BY title DESC; // Shows all books sorted by title in descending order (Z → A).

-- Order by year (descending)
SELECT * FROM Library
ORDER BY published_year DESC; //Shows all books sorted by year of publication (descending) (newest first).


-- Order by author then title
SELECT * FROM Library
ORDER BY author ASC, title DESC; //Shows all books sorted first by author name (ascending A → Z),and if an author has multiple books, sorts those books by title in descending order.




 
