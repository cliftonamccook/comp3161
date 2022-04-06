CREATE Table Book(
    ISBN int Primary Key, 
    bookTitle varchar,
    pages int,
    edition varchar
);

CREATE TABLE Author(
    authorId int Primary Key,
    authorFname char,
    authorLname char
);

CREATE TABLE Library (
    libraryId varchar Primary Key,
    libraryName char,
    town char
);

CREATE TABLE Member(
    memberId varchar Primary Key,
    memberFname char,
    memberLname char,
    email varchar
);

CREATE TABLE Member_Phone (
    memberId int FOREIGN Key REFERENCES Member(memberId),
    phone int
);

CREATE TABLE Publisher (
    publisherId varchar Primary Key,
    publisherName char,
    city char,
    country char
);

CREATE TABLE Fiction (
    ISBN int FOREIGN Key REFERENCES Book(ISBN),
    fictionGenre char
);

CREATE TABLE NonFiction(
    ISBN int FOREIGN Key REFERENCES Book(ISBN),
    noneFictionGenre char
);

CREATE TABLE Writes (
    ISBN int FOREIGN Key REFERENCES Book(ISBN),
    authorId int FOREIGN Key REFERENCES Author(authorId)
);

CREATE TABLE Fine(
    memberId int FOREIGN Key REFERENCES Member(memberId),
    fineNumber int FOREIGN Key REFERENCES Fine(fineNumber),
    fineDate varchar,
    amount int,
    breach varchar
);

CREATE TABLE Subscribes (
    memberId int FOREIGN Key REFERENCES Member(memberId),
    libraryId int FOREIGN Key REFERENCES Library(libraryId),
    joinDate varchar,
    expireDate varchar
);

CREATE TABLE Owns(
    libraryId int FOREIGN Key REFERENCES Library(libraryId),
    ISBN int FOREIGN Key REFERENCES Book(ISBN),
    dateAcquired varchar,
    copies int
);

CREATE TABLE Publishes (
    ISBN int FOREIGN Key REFERENCES Book(ISBN),
    publisherId int FOREIGN Key REFERENCES Publisher(publisherId),
    publisherDate varchar
);

CREATE TABLE Borrows(
    memberId int FOREIGN Key REFERENCES Member(memberId),
    ISBN int FOREIGN Key REFERENCES Book(ISBN),
    loanDate varchar,
    returnDate varchar
);
