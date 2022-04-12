INSERT INTO Book(ISBN, bookTitle, pages, edition)
VALUES
(439785960,"Harry Potter and the Half-Blood Prince",652,6),
(439358078,"Harry Potter and the Order of the Phoenix",870,5),
(439554896,"Harry Potter and the Chamber of Secrets",352,2),
(385732546,"The Power of One",291,1),
(802415318,"The 5 Love Languages / The 5 Love Languages Journal",381,1),
(672326728,"PHP and MySQL Web Development",1008,1),
(330485385,"The Lovely Bones",328,1),
(1599869942,"My Inventions",88,1),
(321430840,"HTML  XHTML  and CSS (Visual Quickstart Guide)",456,1),
(465067093,"The Psychology of Everyday Things",257,1),
(60887966,"The Alchemist",192,1),
(142000671,"Of Mice and Men",103,1),
(451205367,"The Richest Man in Babylon",194,1),
(471743674,"The Warren Buffett Way",245,1),
(140280197,"The 48 Laws of Power",452,1),
(374525749,"The Odyssey",515,1),
(130158852,"Object-Oriented Programming in C++",640,1),
(671708635,"The Seven Habits of Highly Effective People",368,1),
(1591164419,"Bleach  Volume 01",200,1),
(763628107,"The Dragon's Eye",221,1);

INSERT INTO Author(authorId, authorFname, authorLname)
VALUES
(2657,"J.K.","Rowling"),
(2968,"Bryce","Courtenay"),
(4523,"Gary","Chapman"),
(5456,"Luke","Welling"),
(5457,"Laura", "Thomason"),
(7154,"Alice","Sebold"),
(3450,"Nikola","Tesla"),
(3348,"Elizabeth","Castro"),
(6971,"Donald A.","Norman"),
(2429,"Paulo","Coelho"),
(2430,"Alan R.", "Clarke"),
(2435,"James Noel", "Smith"),
(7637,"John","Steinbeck"),
(3493,"George S.","Clason"),
(7268,"Robert G.","Hagstrom"),
(7271,"Bill", "Miller"),
(7275,"Kenneth L.", "Fisher"),
(5401,"Robert","Greene"),
(5431,"Joost","Elffers"),
(3597,"Homer","n/a"),
(3600,"Robert","Fitzgerald"),
(5643,"D.S","Carne-Ross")
(5029,"Richard","Johnsonbaugh"),
(5031,"Martin","Kalin"),
(1680,"Stephen R.","Covey"),
(7985,"Tite","Kubo"),
(7627,"Dugald A.","Steer"),
(7631,"Douglas","Carrel");


INSERT INTO Library(libraryId, libraryName, city)
VALUES
(0001,"ANCHOR POINT PUBLIC LIBRARY","ANCHOR POINT"),
(0002,"ANCHORAGE PUBLIC LIBRARY","ANCHORAGE"),
(0003,"ANDERSON VILLAGE LIBRARY","ANDERSON"),
(0004,"KUSKOKWIM CONSORTIUM LIBRARY","BETHEL"),
(0005,"BIG LAKE PUBLIC LIBRARY","BIG LAKE"),
(0006,"CANTWELL COMMUNITY LIBRARY","CANTWELL"),
(0007,"CHINIAK PUBLIC LIBRARY","CHINIAK"),
(0008,"COLD BAY PUBLIC LIBRARY","COLD BAY"),
(0009,"COOPER LANDING COMMUNITY LIBRARY","COOPER LANDING"),
(0010,"CORDOVA PUBLIC LIBRARY","CORDOVA"),
(0011,"CRAIG PUBLIC LIBRARY","CRAIG"),
(0012,"IPNATCHIAQ LIBRARY","DEERING"),
(0013,"DELTA COMMUNITY LIBRARY","DELTA JUNCTION"),
(0014,"DILLINGHAM PUBLIC LIBRARY","DILLINGHAM"),
(0015,"EAGLE PUBLIC LIBRARY","EAGLE"),
(0016,"FAIRBANKS NORTH STAR BOROUGH PUBLIC LIBRARIES","FAIRBANKS"),
(0017,"CHARLES EVANS COMMUNITY/SCHOOL LIBRARY","GALENA"),
(0018,"COPPER VALLEY COMMUNITY LIBRARY","GLENNALLEN"),
(0019,"GUSTAVUS PUBLIC LIBRARY","GUSTAVUS"),
(0020,"HAINES BOROUGH PUBLIC LIBRARY","HAINES");


INSERT INTO Member(memberId, memberFname, memberLname, email)
VALUES
(220806,"Myles", "Mendez", "myles_menz@gmail.com"),
(756407, "Jaelyn", "Ross", "jaelyn_ros@gmail.com"),
(920467, "Jonas", "Sawyer", "jonas_saw@hotmail.com"),
(915201, "Harry", "Hodge", "harry_H@outlook.com"),
(933082, "Elyse", "Kane", "elyse2Kane@gmail.com"),
(292665, "Regina", "Cisneros", "reginnarCiseros@outlook.com"),
(914064, "Davin", "Lam", "Davin_lam52@gmail.com"),
(490213, "Vivian", "Graham", "vivianGraham_13@hotmail.com"),
(971968, "Maritza", "Gill", "maritza0Gill@gmail.com"),
(442411, "Virginia", "Holmes", "Holmes1998@gmail.com");

INSERT INTO Publisher(publisherId, publisherName, city, country)
VALUES
(101,"Scholastic Inc.","New York","USA"),
(104,"Delacorte Books for Young Readers","New Jersey","USA"),
(105,"Moody Publishers","Chicago","USA"),
(106,"SAMS Publishing","Indianapolis","USA"),
(107,"Picador","New York","USA"),
(108,"Filiquarian Publishing LLC.","Minneapolis","USA"),
(109,"Peachpit Press","Berkeley","USA"),
(110,"Basic Books","New York","USA"),
(111,"HarperOne","San Francisco","USA"),
(112,"Penguin Books","London","England"),
(113,"Berkley Books","New York","USA"),
(114,"John Wiley & Sons","New York","USA"),
(115,"Penguin (Business)","London","England"),
(116,"Farrar  Straus and Giroux","New York","USA"),
(117,"Prentice Hall","Wilmington","USA"),
(118,"Free Press","Detroit","USA"),
(119,"VIZ Media LLC","San Francisco","USA"),
(120,"Candlewick Press","Somerville","USA");

INSERT INTO Member_Phone(memberId, phone)
VALUES
(220806,8765588649),
(756407,8764245997),
(920467,8761990166),
(915201,8762631068),
(933082,8767881668),
(292665,8765012944),
(914064,8769187544),
(490213,8762713126),
(971968,8761147653),
(442411,8769614767);

INSERT INTO Writes(ISBN, authorId)
VALUES
(439785960,2657),
(439358078,2657),
(439554896,2657),
(385732546,2968),
(802415318,4523),
(672326728,5456/5457),
(330485385,7154),
(1599869942,3450),
(321430840,3348),
(465067093,6971),
(60887966,2429/2430/2435),
(142000671,7637),
(451205367,3493),
(471743674,7268/7271/7275),
(140280197,5401/5431),
(374525749,3597/3600/5643),
(130158852,5029/5031),
(671708635,1680),
(1591164419,7985),
(763628107,7627/7631);

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

INSERT INTO Fiction_fictionGenre(fictionGenre, ISBN)
VALUES
("Fantasy",439785960),
("Fantasy",439358078),
("Fantasy",439554896),
("Sports",385732546),
("Supernatural thriller",330485385),
("Fantasy",60887966),
("Drama",142000671),
("Epic poetry",374525749),
("Shonen",1591164419),
("Crime Fiction",763628107);

INSERT INTO NonFiction_nonFictionGenre(nonFictionGenre, ISBN)
VALUES
("Family & Relationships",802415318),
("Education",672326728),
("Autobiographies",1599869942),
("Education",321430840),
("Psychology",465067093),
("Business",451205367),
("Business",471743674),
("Psychology",140280197),
("Education",130158852),
("Self-help",671708635);

INSERT INTO Fine(memberId, fineNumber, fineDate, amount, breach)
VALUES
(971968,107,02/02/2022,6,"Missed Return Date"),
(442411,706,04/02/2022,30,"Badly Damaged Book"),
(292665,253,06/02/2022,12,"Missed Return Date"),
(220806,665,13/02/2022,29,"Badly Damaged Book"),
(915201,678,17/02/2022,9,"Missed Return Date"),
(220806,751,18/02/2022,5,"Missed Return Date"),
(933082,536,22/02/2022,30,"Badly Damaged Book"),
(490213,841,23/02/2022,25,"Badly Damaged Book"),
(756407,363,25/02/2022,21,"Badly Damaged Book"),
(914064,354,28/02/2022,19,"Damagaed Book");

INSERT INTO Subscribes(memberId, libraryId, joinDate)
VALUES
(220806,0001,15/09/2016),
(756407,0002,05/02/2017),
(920467,0003,28/08/2017),
(915201,0004,04/12/2017),
(933082,0005,17/01/2018),
(292665,0006,02/01/2019),
(914064,0007,01/04/2019),
(490213,0008,31/07/2019),
(971968,0009,05/11/2019),
(442411,0010,14/11/2020);

INSERT INTO Owns(libraryId, ISBN, dateAcquired, copies)
VALUES
(0001,439358078,22/04/2014,26),
(0002,465067093,28/04/2014,27),
(0003,439358078,27/10/2014,26),
(0004,763628107,20/11/2014,29),
(0005,465067093,28/02/2015,26),
(0006,1599869942,08/03/2015,12),
(0007,439358078,10/01/2016,14),
(0008,471743674,13/02/2016,16),
(0009,439358078,23/02/2016,18),
(0010,465067093,25/05/2016,20),
(0011,1599869942,28/05/2016,22),
(0012,439358078,08/12/2016,21),
(0013,465067093,20/02/2017,24),
(0014,1599869942,05/07/2017,29),
(0015,439358078,26/07/2017,30),
(0016,471743674,23/09/2017,11),
(0017,1599869942,05/11/2017,17),
(0018,439358078,24/12/2017,23),
(0019,471743674,05/08/2018,17),
(0020,465067093,26/12/2018,15);

INSERT INTO Publishes(publisherId, ISBN, publicationDate)
VALUES
(101,439785960,9/16/2006),
(101,439358078,9/1/2004),
(101,439554896,11/1/2003),
(104,385732546,9/13/2005),
(105,802415318,1/1/2005),
(106,672326728,10/1/2004),
(107,330485385,6/1/2003),
(108,1599869942,5/17/2006),
(109,321430840,8/1/2006),
(110,465067093,6/13/1988),
(111,60887966,5/2/2006),
(112,142000671,1/8/2002),
(113,451205367,2/1/2008),
(114,471743674,10/1/2005),
(115,140280197,9/1/2000),
(116,374525749,11/5/1998),
(117,130158852,8/13/1999),
(118,671708635,9/15/1990),
(119,1591164419,5/19/2004);
(120,763628107,11/14/2006);

INSERT INTO Borrows(memberId, ISBN, loanDate, returnDate)
VALUES
(756407,130158852,07/03/2022,11/04/2022),
(442411,451205367,08/03/2022,14/04/2022),
(933082,465067093,10/03/2022,15/04/2022),
(920467,763628107,11/03/2022,20/04/2022),
(292665,671708635,16/03/2022,21/04/2022),
(220806,1591164419,18/03/2022,25/04/2022),
(490213,374525749,21/03/2022,27/04/2022),
(915201,330485385,24/03/2022,05/05/2022),
(971968,1591164419,25/03/2022,10/05/2022),
(914064,60887966,30/03/2022,12/05/2022);
