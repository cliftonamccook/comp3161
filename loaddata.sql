tee loaddata.log

CREATE INDEX ISBN_INDEX ON Book(ISBN);
INSERT INTO Book(ISBN, bookTitle, pages, edition)
VALUES
(439785960,"Harry Potter and the Half-Blood Prince", 652, 6),
(439358078,"Harry Potter and the Order of the Phoenix", 870, 5),
(439554896,"Harry Potter and the Chamber of Secrets", 352, 2),
(385732546,"The Power of One", 291, 1),
(802415318,"The 5 Love Languages - The 5 Love Languages Journal", 381, 1),
(672326728,"PHP and MySQL Web Development", 1008, 1),
(330485385,"The Lovely Bones", 328, 1),
(1599869942,"My Inventions", 88, 1),
(321430840,"HTML  XHTML  and CSS (Visual Quickstart Guide)", 456, 1),
(465067093,"The Psychology of Everyday Things", 257, 1),
(60887966,"The Alchemist", 192, 1),
(142000671,"Of Mice and Men", 103, 1),
(451205367,"The Richest Man in Babylon", 194, 1),
(471743674,"The Warren Buffett Way", 245, 1),
(140280197,"The 48 Laws of Power", 452, 1),
(374525749,"The Odyssey", 515, 1),
(130158852,"Object-Oriented Programming in C++", 640, 1),
(671708635,"The Seven Habits of Highly Effective People", 368, 1),
(1591164419,"Bleach  Volume 01", 200, 1),
(763628107,"The Dragon's Eye", 221, 1);

SELECT * FROM Book;
SHOW INDEX FROM Book;

--

CREATE INDEX AUTHOR_ID_INDEX ON Author(authorId);
INSERT INTO Author(authorId, authorFname, authorLname)
VALUES
(2657, "J.K.", "Rowling"),
(2968, "Bryce", "Courtenay"),
(4523, "Gary", "Chapman"),
(5456, "Luke", "Welling"),
(5457, "Laura", "Thomason"),
(7154, "Alice", "Sebold"),
(3450, "Nikola", "Tesla"),
(3348, "Elizabeth", "Castro"),
(6971, "Donald A.", "Norman"),
(2429, "Paulo", "Coelho"),
(2430, "Alan R.", "Clarke"),
(2435, "James Noel", "Smith"),
(7637, "John", "Steinbeck"),
(3493, "George S.", "Clason"),
(7268, "Robert G.", "Hagstrom"),
(7271, "Bill", "Miller"),
(7275, "Kenneth L.", "Fisher"),
(5401, "Robert", "Greene"),
(5431, "Joost", "Elffers"),
(3597, "Homer", "n-a"),
(3600, "Robert", "Fitzgerald"),
(5643, "D.S", "Carne-Ross"),
(5029, "Richard", "Johnsonbaugh"),
(5031, "Martin", "Kalin"),
(1680, "Stephen R.", "Covey"),
(7985, "Tite", "Kubo"),
(7627, "Dugald A.", "Steer"),
(7631, "Douglas", "Carrel");

SELECT * FROM Author;
SHOW INDEX FROM Author;


--

INSERT INTO Library(libraryId, libraryName, city)
VALUES
(0001, "ANCHOR POINT PUBLIC LIBRARY", "ANCHOR POINT"),
(0002, "ANCHORAGE PUBLIC LIBRARY", "ANCHORAGE"),
(0003, "ANDERSON VILLAGE LIBRARY", "ANDERSON"),
(0004, "KUSKOKWIM CONSORTIUM LIBRARY", "BETHEL"),
(0005, "BIG LAKE PUBLIC LIBRARY", "BIG LAKE"),
(0006, "CANTWELL COMMUNITY LIBRARY", "CANTWELL"),
(0007, "CHINIAK PUBLIC LIBRARY", "CHINIAK"),
(0008, "COLD BAY PUBLIC LIBRARY", "COLD BAY"),
(0009, "COOPER LANDING COMMUNITY LIBRARY", "COOPER LANDING"),
(0010, "CORDOVA PUBLIC LIBRARY", "CORDOVA"),
(0011, "CRAIG PUBLIC LIBRARY", "CRAIG"),
(0012, "IPNATCHIAQ LIBRARY", "DEERING"),
(0013, "DELTA COMMUNITY LIBRARY", "DELTA JUNCTION"),
(0014, "DILLINGHAM PUBLIC LIBRARY", "DILLINGHAM"),
(0015, "EAGLE PUBLIC LIBRARY", "EAGLE"),
(0016, "FAIRBANKS NORTH STAR BOROUGH PUBLIC LIBRARIES", "FAIRBANKS"),
(0017, "CHARLES EVANS COMMUNITY-SCHOOL LIBRARY", "GALENA"),
(0018, "COPPER VALLEY COMMUNITY LIBRARY", "GLENNALLEN"),
(0019, "GUSTAVUS PUBLIC LIBRARY", "GUSTAVUS"),
(0020, "HAINES BOROUGH PUBLIC LIBRARY", "HAINES");

SELECT * from Library;

--

CREATE INDEX MEMBER_ID_INDEX ON Member(memberId);
INSERT INTO Member(memberId, memberFname, memberLname, email)
VALUES
(220806, "Myles", "Mendez", "myles_menz@gmail.com"),
(756407, "Jaelyn", "Ross", "jaelyn_ros@gmail.com"),
(920467, "Jonas", "Sawyer", "jonas_saw@hotmail.com"),
(915201, "Harry", "Hodge", "harry_H@outlook.com"),
(933082, "Elyse", "Kane", "elyse2Kane@gmail.com"),
(292665, "Regina", "Cisneros", "reginnarCiseros@outlook.com"),
(914064, "Davin", "Lam", "Davin_lam52@gmail.com"),
(490213, "Vivian", "Graham", "vivianGraham_13@hotmail.com"),
(971968, "Maritza", "Gill", "maritza0Gill@gmail.com"),
(442411, "Virginia", "Holmes", "Holmes1998@gmail.com");

SELECT * FROM Member;
SHOW INDEX FROM Member;

--

CREATE INDEX PUBLISHER_ID_INDEX ON Publisher(publisherId);
INSERT INTO Publisher(publisherId, publisherName, city, country)
VALUES
(101, "Scholastic Inc.", "New York", "USA"),
(104, "Delacorte Books for Young Readers", "New Jersey", "USA"),
(105, "Moody Publishers", "Chicago", "USA"),
(106, "SAMS Publishing", "Indianapolis", "USA"),
(107, "Picador", "New York", "USA"),
(108, "Filiquarian Publishing LLC.", "Minneapolis", "USA"),
(109, "Peachpit Press", "Berkeley", "USA"),
(110, "Basic Books", "New York", "USA"),
(111, "HarperOne", "San Francisco", "USA"),
(112, "Penguin Books", "London", "England"),
(113, "Berkley Books", "New York", "USA"),
(114, "John Wiley & Sons", "New York", "USA"),
(115, "Penguin (Business)", "London", "England"),
(116, "Farrar  Straus and Giroux", "New York", "USA"),
(117, "Prentice Hall", "Wilmington", "USA"),
(118, "Free Press", "Detroit", "USA"),
(119, "VIZ Media LLC", "San Francisco", "USA"),
(120, "Candlewick Press", "Somerville", "USA");

SELECT * FROM Publisher;
SHOW INDEX FROM Publisher;

--

INSERT INTO Member_Phone(memberId, phone)
VALUES
(220806, 8765588649),
(756407, 8764245997),
(920467, 8761990166),
(915201, 8762631068),
(933082, 8767881668),
(292665, 8765012944),
(914064, 8769187544),
(490213, 8762713126),
(971968, 8761147653),
(442411, 8769614767);

SELECT * FROM Member_Phone;

--

INSERT INTO Writes(ISBN, authorId)
VALUES
(439785960, 2657),
(439358078, 2657),
(439554896, 2657),
(385732546, 2968),
(802415318, 4523),
(672326728, 5456),
(672326728, 5457),
(330485385, 7154),
(1599869942, 3450),
(321430840, 3348),
(465067093, 6971),
(60887966, 2429),
(60887966, 2430),
(60887966, 2435),
(142000671, 7637),
(451205367, 3493),
(471743674, 7268),
(471743674, 7271),
(471743674, 7275),
(140280197, 5401),
(140280197, 5431),
(374525749, 3597),
(374525749, 3600),
(374525749, 5643),
(130158852, 5029),
(130158852, 5031),
(671708635, 1680),
(1591164419, 7985),
(763628107, 7627),
(763628107, 7631);

SELECT * FROM Writes;

--

INSERT INTO Fiction(ISBN)
VALUES
(439785960),
(439358078),
(439554896),
(385732546),
(330485385),
(60887966),
(142000671),
(374525749),
(1591164419),
(763628107);

SELECT * FROM Fiction;

--

INSERT INTO NonFiction(ISBN)
VALUES
(802415318),
(672326728),
(1599869942),
(321430840),
(465067093),
(451205367),
(471743674),
(140280197),
(130158852),
(671708635);

SELECT * FROM NonFiction;

--

INSERT INTO Fiction_fictionGenre(fictionGenre, ISBN)
VALUES
("Fantasy", 439785960),
("Fantasy", 439358078),
("Fantasy", 439554896),
("Sports", 385732546),
("Supernatural thriller", 330485385),
("Fantasy", 60887966),
("Drama", 142000671),
("Epic poetry", 374525749),
("Shonen", 1591164419),
("Crime Fiction", 763628107);

SELECT * FROM Fiction_fictionGenre;

--

INSERT INTO NonFiction_nonFictionGenre(nonFictionGenre, ISBN)
VALUES
("Family & Relationships", 802415318),
("Education", 672326728),
("Autobiographies", 1599869942),
("Education", 321430840),
("Psychology", 465067093),
("Business", 451205367),
("Business", 471743674),
("Psychology", 140280197),
("Education", 130158852),
("Self-help", 671708635);

SELECT * FROM NonFiction_nonFictionGenre;

--

INSERT INTO Fine(memberId, fineNumber, fineDate, amount, breach)
VALUES
(971968, 107, '2022-02-02', 6, "Missed Return Date"),
(442411, 706, '2022-02-04', 30, "Badly Damaged Book"),
(292665, 253, '2022-02-06', 12, "Missed Return Date"),
(220806, 665, '2022-02-13', 29, "Badly Damaged Book"),
(915201, 678, '2022-02-17', 9, "Missed Return Date"),
(220806, 751, '2022-02-18', 5, "Missed Return Date"),
(933082, 536, '2022-02-22', 30, "Badly Damaged Book"),
(490213, 841, '2022-02-23', 25, "Badly Damaged Book"),
(756407, 363, '2022-02-25', 21, "Badly Damaged Book"),
(914064, 354, '2022-02-28', 19, "Damagaed Book");

SELECT * FROM Fine;

--

INSERT INTO Subscribes(memberId, libraryId, joinDate)
VALUES
(220806, 0001, '2016-09-15'),
(756407, 0002, '2017-02-05'),
(920467, 0003, '2017-08-28'),
(915201, 0004, '2017-12-04'),
(933082, 0005, '2018-01-17'),
(292665, 0006, '2019-01-02'),
(914064, 0007, '2019-04-01'),
(490213, 0008, '2019-07-31'),
(971968, 0009, '2019-11-05'),
(442411, 0010, '2020-11-14');

SELECT * FROM Subscribes;

INSERT INTO Owns(libraryId, ISBN, dateAcquired, copies)
VALUES
(0001, 439358078, '2014-04-22', 26),
(0002, 465067093, '2014-04-28', 27),
(0003, 439358078, '2014-10-27', 26),
(0004, 763628107, '2014-11-20', 29),
(0005, 465067093, '2015-02-28', 26),
(0006, 1599869942, '2015-03-08', 12),
(0007, 439358078, '2016-01-10', 14),
(0008, 471743674, '2016-02-13', 16),
(0009, 439358078, '2016-02-23', 18),
(0010, 465067093, '2016-05-25', 20),
(0011, 1599869942, '2016-05-28', 22),
(0012, 439358078, '2016-12-08', 21),
(0013, 465067093, '2017-02-20', 24),
(0014, 1599869942, '2017-07-05', 29),
(0015, 439358078, '2017-07-26', 30),
(0016, 471743674, '2017-09-23', 11),
(0017, 1599869942, '2017-11-05', 17),
(0018, 439358078, '2017-12-24', 23),
(0019, 471743674, '2018-08-05', 17),
(0020, 465067093, '2018-12-26', 15);

SELECT * FROM Owns;

--

INSERT INTO Publishes(publisherId, ISBN, publicationDate)
VALUES
(101, 439785960, '2006-9-16'),
(101, 439358078, '2004-9-1'),
(101, 439554896, '2003-11-1'),
(104, 385732546, '2005-9-13'),
(105, 802415318, '2005-1-1'),
(106, 672326728, '2004-10-1'),
(107, 330485385, '2003-6-1'),
(108, 1599869942, '2006-5-17'),
(109, 321430840, '2006-8-1'),
(110, 465067093, '2006-6-13'),
(111, 60887966, '2006-5-2'),
(112, 142000671, '2002-1-8'),
(113, 451205367, '2008-2-1'),
(114, 471743674, '2005-10-1'),
(115, 140280197, '2000-9-1'),
(116, 374525749, '1998-11-5'),
(117, 130158852, '1999-8-13'),
(118, 671708635, '1990-9-15'),
(119, 1591164419, '2004-5-19'),
(120, 763628107, '2006-11-14');

SELECT * FROM Publishes;

--

INSERT INTO Borrows(memberId, ISBN, loanDate, returnDate)
VALUES
(756407, 130158852, '2022-03-07', '2022-04-11'),
(442411, 451205367, '2022-03-08', '2022-04-14'),
(933082, 465067093, '2022-03-10', '2022-04-15'),
(920467, 763628107, '2022-03-11', '2022-04-20'),
(292665, 671708635, '2022-03-16', '2022-04-21'),
(220806, 1591164419, '2022-03-18', '2022-04-25'),
(490213, 374525749, '2022-03-21', '2022-04-27'),
(915201, 330485385, '2022-03-24', '2022-05-05'),
(971968, 1591164419, '2022-03-25', '2022-05-10'),
(914064, 60887966, '2022-03-30', '2022-05-12');

SELECT * FROM Borrows;
