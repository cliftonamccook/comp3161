INSERT INTO Book(ISBN, bookTitle, pages, edition)
VALUES
(439785960,"Harry Potter and the Half-Blood Prince",652,6),
(439358078,"Harry Potter and the Order of the Phoenix",870,5),
(439554896,"Harry Potter and the Chamber of Secrets",352,2),
(385732546,"The Power of One",291,1),
(802415318,"The 5 Love Languages / The 5 Love Languages Journal",381,1);
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
(763628107,"The Dragon's Eye",221,1)

INSERT INTO Author(authorId, authorFname, authorLname)
VALUES
(2657,"J.K.","Rowling"),
(2657,"J.K.","Rowling"),
(2657,"J.K.","Rowling"),
(2968,"Bryce","Courtenay"),
(4523,"Gary","Chapman");
(5456,"Luke/Laura","Welling/Thomson"),
(7154,"Alice","Sebold"),
(3450,"Nikola","Tesla"),
(3348,"Elizabeth","Castro"),
(6971,"Donald A.","Norman"),
(2429,"Paulo/Alan R./James Noel","Coelho/Clarke/Smith"),
(7637,"John","Steinbeck"),
(3493,"George S.","Clason"),
(7268,"Robert G./Bill/Kenneth L.","Hagstrom/Miller/Fisher"),
(5401,"Robert/Joost","Greene/Elffers"),
(3597,"Homer/Robert /D.S.","Fitzgerald/Carne-Ross"),
(5029,"Richard /Martin","Johnsonbaugh/Kalin"),
(1680,"Stephen R.","Covey"),
(7985,"Tite","Kubo"),
(7627,"Dugald A./Douglas","Steer/Carrel")

INSERT INTO Library(libraryId, libraryName, city)
VALUES
(LD0001,"ANCHOR POINT PUBLIC LIBRARY","ANCHOR POINT"),
(LD0002,"ANCHORAGE PUBLIC LIBRARY","ANCHORAGE"),
(LD0003,"ANDERSON VILLAGE LIBRARY","ANDERSON"),
(LD0004,"KUSKOKWIM CONSORTIUM LIBRARY","BETHEL"),
(LD0005,"BIG LAKE PUBLIC LIBRARY","BIG LAKE"),
(LD0006,"CANTWELL COMMUNITY LIBRARY","CANTWELL"),
(LD0007,"CHINIAK PUBLIC LIBRARY","CHINIAK"),
(LD0008,"COLD BAY PUBLIC LIBRARY","COLD BAY"),
(LD0009,"COOPER LANDING COMMUNITY LIBRARY","COOPER LANDING"),
(LD0010,"CORDOVA PUBLIC LIBRARY","CORDOVA"),
(LD0011,"CRAIG PUBLIC LIBRARY","CRAIG"),
(LD0012,"IPNATCHIAQ LIBRARY","DEERING"),
(LD0013,"DELTA COMMUNITY LIBRARY","DELTA JUNCTION"),
(LD0014,"DILLINGHAM PUBLIC LIBRARY","DILLINGHAM"),
(LD0015,"EAGLE PUBLIC LIBRARY","EAGLE"),
(LD0016,"FAIRBANKS NORTH STAR BOROUGH PUBLIC LIBRARIES","FAIRBANKS"),
(LD0017,"CHARLES EVANS COMMUNITY/SCHOOL LIBRARY","GALENA"),
(LD0018,"COPPER VALLEY COMMUNITY LIBRARY","GLENNALLEN"),
(LD0019,"GUSTAVUS PUBLIC LIBRARY","GUSTAVUS"),
(LD0020,"HAINES BOROUGH PUBLIC LIBRARY","HAINES"),


INSERT INTO Member(memberId, memberFname, memberLname, email)
VALUES
(220806,?,?,?),
(756407,?,?,?),
(920467,?,?,?),
(915201,?,?,?),
(933082,?,?,?),
(292665,?,?,?),
(914064,?,?,?),
(490213,?,?,?),
(971968,?,?,?),
(442411,?,?,?);

INSERT INTO Publisher(publisherId, publisherName, city, country)
VALUES
(,"Scholastic Inc.",?,?),
(,"Scholastic Inc.",?,?),
(,"Scholastic Inc.",?,?),
(,"Delacorte Books for Young Readers",?,?),
(,"Moody Publishers",?,?),
(,"Sams",?,?),
(,"Picador",?,?),
(,"Filiquarian Publishing LLC.",?,?),
(,"Peachpit Press",?,?);
(,"Basic Books",?,?);
(,"HarperOne",?,?);
(,"Penguin Books",?,?);
(,"Berkley Books",?,?);
(,"John Wiley & Sons",?,?);
(,"Penguin (Business)",?,?);
(,"Farrar  Straus and Giroux",?,?);
(,"Prentice Hall",?,?);
(,"Free Press",?,?);
(,"VIZ Media LLC",?,?);
(,"Candlewick Press",?,?);

INSERT INTO Member_Phone(memberId, phone)
VALUES
(220806,18765588649),
(756407,18764245997),
(920467,18761990166),
(915201,18762631068),
(933082,18767881668),
(292665,18765012944),
(914064,18769187544),
(490213,18762713126),
(971968,18761147653),
(442411,18769614767);

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
