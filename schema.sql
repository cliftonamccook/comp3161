CREATE DATABASE booksystem;

USE booksystem;

CREATE TABLE Book(
    ISBN INTEGER(13) NOT NULL,
    bookTitle VARCHAR(255),
    pages INTEGER(10),
    edition VARCHAR(10),
    PRIMARY KEY(ISBN)
);

CREATE TABLE Author(
    authorId INTEGER(12) NOT NULL,
    authorFname VARCHAR(255),
    authorLname VARCHAR(255),
    PRIMARY KEY(authorId)
);

CREATE TABLE Library(
    libraryId INTEGER(12) NOT NULL,
    libraryName VARCHAR(255),
    town VARCHAR(255),
    PRIMARY KEY(authorId)
);

CREATE TABLE Member(
    memberId INTEGER(12) NOT NULL,
    memberFname VARCHAR(255),
    memberLname VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY(memberId)
);

CREATE TABLE Publisher(
    publisherId INTEGER(12) NOT NULL,
    publisherName VARCHAR(255),
    city VARCHAR(255),
    country VARCHAR(255),
    PRIMARY KEY(publisherId)
);

CREATE TABLE Member_Phone(
    memberId INTEGER(12) NOT NULL,
    phone VARCHAR(10),
    FOREIGN KEY memberId REFERENCES Member(memberId),
    PRIMARY KEY(memberId,phone)
);

CREATE TABLE Writes(
    ISBN INTEGER(13) NOT NULL,
    authorId VARCHAR(255),
    FOREIGN KEY ISBN REFERENCES Book(ISBN),
    FOREIGN KEY authorId REFERENCES Author(authorId),
    PRIMARY KEY(ISBN,authorId)
);

CREATE TABLE Fiction
(
  ISBN INTEGER(13) NOT NULL,
  PRIMARY KEY (ISBN),
  FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE NonFiction
(
  ISBN INTEGER(13) NOT NULL,
  PRIMARY KEY (ISBN),
  FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Fiction_fictionGenre
(
  fictionGenre VARCHAR(255) NOT NULL,
  ISBN INTEGER(13) NOT NULL,
  PRIMARY KEY (fictionGenre, ISBN),
  FOREIGN KEY (ISBN) REFERENCES Fiction(ISBN)
);

CREATE TABLE NonFiction_nonFictionGenre
(
  nonFictionGenre VARCHAR(255) NOT NULL,
  ISBN INTEGER(13) NOT NULL,
  PRIMARY KEY (nonFictionGenre, ISBN),
  FOREIGN KEY (ISBN) REFERENCES NonFiction(ISBN)
);

CREATE TABLE Fine(
    memberId INTEGER(12) NOT NULL,
    fineNumber INTEGER(10) NOT NULL,
    fineDate DATE,
    amount DECIMAL(10,2),
    breach VARCHAR(255)
    FOREIGN KEY memberId REFERENCES Member(memberId),
    PRIMARY KEY(fineNumber)
);

CREATE TABLE Subscribes(
    memberId INTEGER(12) NOT NULL,
    libraryId INTEGER(12) NOT NULL,
    joinDate DATE,
    expireDate DATE,
    FOREIGN KEY memberId REFERENCES Member(memberId),
    FOREIGN KEY libraryId REFERENCES Library(libraryId),
    PRIMARY KEY(memberId,libraryId)
);

CREATE TABLE Owns(
    libraryId INTEGER(12) NOT NULL,
    ISBN INTEGER(13) NOT NULL,
    dateAcquired DATE,
    copies INTEGER(10),
    FOREIGN KEY ISBN REFERENCES Book(ISBN),
    FOREIGN KEY libraryId REFERENCES Library(libraryId),
    PRIMARY KEY(libraryId,ISBN)
);

CREATE TABLE Publishes(
    publisherId INTEGER(12) NOT NULL,
    ISBN INTEGER(13) NOT NULL,
    publicationDate DATE,
    FOREIGN KEY ISBN REFERENCES Book(ISBN),
    FOREIGN KEY publisherId REFERENCES Publisher(publisherId),
    PRIMARY KEY(publisherId,ISBN)
);

CREATE TABLE Borrows(
    memberId INTEGER(12) NOT NULL,
    ISBN INTEGER(13) NOT NULL,
    loanDate DATE,
    returnDate DATE,
    FOREIGN KEY ISBN REFERENCES Book(ISBN),
    FOREIGN KEY memberId REFERENCES Member(memberId),
    PRIMARY KEY(memberId,ISBN)
);