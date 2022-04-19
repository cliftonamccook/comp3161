-- tee queries.log

-- # CREATE -- 

-- 1. Get all books published after 2005 
CREATE OR REPLACE VIEW books_published_after_2005 
AS SELECT book.bookTitle, publisher.publisherName 
FROM Publishes AS publishes
LEFT JOIN Book AS book 
  ON publishes.ISBN = book.ISBN
LEFT JOIN Publisher AS publisher 
  ON publishes.publisherId = publisher.publisherId
WHERE Year(publishes.publicationDate) > 2005;

SELECT * FROM books_published_after_2005;

-- The ministry wants to which book was acquired the most and for which libary 
CREATE OR REPLACE VIEW book_acquired_the_most
AS SELECT l.libraryId, l.libraryName, l.city, b.bookTitle, b.ISBN FROM Owns as o
LEFT JOIN Library as l 
  ON l.libraryId = o.libraryId
LEFT JOIN Book as b
  ON b.ISBN = o.ISBN
WHERE o.copies = (SELECT MAX(copies) FROM Owns);

SELECT * FROM book_acquired_the_most;

-- # END CREATE -- 


-- # READ --

-- 2. Get the first name, last name and phone number of all members who borrowed a book
SELECT concat(m.memberFname, ' ', m.memberLname) AS member_full_name, mp.phone 
FROM Borrows AS b 
LEFT JOIN Member AS m 
  ON m.memberId = b.memberId 
LEFT JOIN Member_Phone AS mp 
  ON mp.memberId = m.memberId;

-- 3. Get first & last name of the author who wrote the most books  
CREATE OR REPLACE VIEW author_occurances AS SELECT authorId, count(*) AS occurrences FROM Writes GROUP BY authorId; 

SELECT a.authorFname, a.authorLname FROM author_occurances AS ao
LEFT JOIN Author AS a ON a.authorId = ao.authorId
WHERE occurrences = (SELECT max(occurrences) FROM author_occurances);

-- # END READ -- 


-- # UPDATE --

-- 4. Update the date to 2018-10-1 the HAINES BOROUGH PUBLIC LIBRARY acquired the book with ISBN: 465067093
UPDATE Owns AS o
INNER JOIN Library AS l ON l.libraryId = o.libraryId
SET o.dateAcquired = '2018-10-1'
WHERE l.libraryName = "HAINES BOROUGH PUBLIC LIBRARY" AND o.ISBN = 465067093;

-- All libraries are having a book drive and are donating 10 Fantasy books to local school, only if the library has more than 
-- 10 Fantasy books in stock 
UPDATE Fiction_fictionGenre AS f
LEFT JOIN Owns AS o 
  ON o.ISBN = f.ISBN
SET o.copies = o.copies - 10
WHERE f.fictionGenre = "Fantasy" and o.copies IS NOT null and o.copies > 10;

-- # END UPDATE --


-- # DESTROY --

-- 5. Libraries are having a special where they are removing all fines that are less than $15
DELETE FROM Fine where amount < 15;

-- # END DESTROY --


-- # PROCEDURE

-- Get all members who have a fine
delimiter //
CREATE OR REPLACE PROCEDURE getAllMembersWhoHasAFine()
BEGIN
  SELECT m.memberFname, m.memberLname, m.email, f.breach, f.amount FROM Fine as f
  INNER JOIN Member as m
    ON m.memberId = f.memberId;
END //

call getAllMembersWhoHasAFine();

-- # END Procedure --
