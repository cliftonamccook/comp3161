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

-- # END CREATE -- 


-- # READ 

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


-- # UPDATE 

-- 4. Update the date to 2018-10-1 the HAINES BOROUGH PUBLIC LIBRARY acquired the book with ISBN: 465067093
UPDATE Owns AS o
INNER JOIN Library AS l ON l.libraryId = o.libraryId
SET o.dateAcquired = '2018-10-1'
WHERE l.libraryName = "HAINES BOROUGH PUBLIC LIBRARY" AND o.ISBN = 465067093;


-- # DESTROY 

-- 5. Libraries are having a special where they are removing all fines that are less than $15
DELETE FROM Fine where amount < 15;

-- # END DESTROY