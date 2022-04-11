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
(3597,"Homer","Fitzgerald"),
(3600,"Robert","Carne-Ross"),
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
(101,"Scholastic Inc.",?,?),
(102,"Scholastic Inc.",?,?),
(103,"Scholastic Inc.",?,?),
(104,"Delacorte Books for Young Readers",?,?),
(105,"Moody Publishers",?,?),
(106,"Sams",?,?),
(107,"Picador",?,?),
(108,"Filiquarian Publishing LLC.",?,?),
(109,"Peachpit Press",?,?),
(110,"Basic Books",?,?),
(111,"HarperOne",?,?),
(112,"Penguin Books",?,?),
(113,"Berkley Books",?,?);
(114,"John Wiley & Sons",?,?),
(115,"Penguin (Business)",?,?),
(116,"Farrar  Straus and Giroux",?,?),
(117,"Prentice Hall",?,?),
(118,"Free Press",?,?),
(119,"VIZ Media LLC",?,?),
(120,"Candlewick Press",?,?);

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
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?);

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
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?);

INSERT INTO NonFiction_nonFictionGenre(nonFictionGenre, ISBN)
VALUES
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?),
(?,?);

INSERT INTO Fine(memberId, fineNumber, fineDate, amount, breach)
VALUES
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?),
(?,?,?,?,?);

INSERT INTO Subscribes(memberId, libraryId, joinDate)
VALUES
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?),
(?,?,?);

INSERT INTO Owns(libraryId, ISBN, dateAcquired, copies)
VALUES
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?)
(?,?,?,?);

INSERT INTO Publishes(publisherId, ISBN, publicationDate)
VALUES
(?,439785960,9/16/2006),
(?,439358078,9/1/2004),
(?,439554896,11/1/2003),
(?,385732546,9/13/2005),
(?,802415318,1/1/2005),
(?,672326728,10/1/2004),
(?,330485385,6/1/2003),
(?,1599869942,5/17/2006),
(?,321430840,8/1/2006),
(?,465067093,6/13/1988),
(?,60887966,5/2/2006),
(?,142000671,1/8/2002),
(?,451205367,2/1/2008),
(?,471743674,10/1/2005),
(?,140280197,9/1/2000),
(?,374525749,11/5/1998),
(?,130158852,8/13/1999),
(?,671708635,9/15/1990),
(?,1591164419,5/19/2004);
(?,763628107,11/14/2006);

INSERT INTO Borrows(memberId, ISBN, loanDate, returnDate)
VALUES
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?),
(?,?,?,?);
