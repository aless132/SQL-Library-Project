



CREATE PROCEDURE dbo.usplibrary

AS 
BEGIN

	CREATE TABLE library_branch (
		branchID INT PRIMARY KEY NOT NULL IDENTITY (001,1),
		branchName VARCHAR(30) NOT NULL,
		branchAddr VARCHAR(30) NOT NULL
	);

	INSERT INTO library_branch
		(branchName, branchAddr)
		VALUES
		('Sharpstown', '555 Sharpstown St.'),
		('Central', '666 Central Ave.'),
		('Uptown', '777 Uptown Way.'),
		('Southside', '888 Soutside Ave.'),
		('Northside', '999 Northside Ct.'),
		('Far Westside', '1010 Westside Way'),
		('Far Eastside', '101 Eastside St.'),
		('Laketown', '202 Lake St.')
	;

	CREATE TABLE publisher (
		publisherName VARCHAR(50) PRIMARY KEY NOT NULL, 
		addr VARCHAR(50) NOT NULL,
		phone VARCHAR(20) NOT NULL
	);

	INSERT INTO publisher
		(publisherName, addr, phone)
		VALUES
		('Random House', '111 Anywhere St. Chicago, IL 600001', '312-111-2222'), 
		('Halfway House', '888 Anywhere St. Chicago, IL 600001', '312-888-0000'),
		('Dog Gone Good', '333 Good Boy Pl. Chicago, IL 600001', '312-333-6666'),
		('Locals Only', '1 Way No Wy. Chicago, IL 600001', '312-999-0000')
	;

	CREATE TABLE books (
		bookID INT PRIMARY KEY NOT NULL IDENTITY (100,1),
		title VARCHAR(50) NOT NULL,
		publisherName VARCHAR(50) FOREIGN KEY REFERENCES publisher(publisherName)/*foreign key*/
	);

	INSERT INTO books
		(title, publisherName)
		VALUES
		('The Lost Tribe', 'Random House'),
		('The Shining', 'Halfway House'),
		('End of Watch', 'Halfway House'),
		('Firestarter', 'Halfway House'),
		('Educated', 'Random House'),
		('Christine', 'Halfway House'),
		('To Each His Own', 'Halfway House'),
		('Then She Was Gone', 'Locals Only'),
		('Forgotton Birthday', 'Random House'),
		('Ruff, the Dog', 'Dog Gone Good'),
		('T-Rex and Bambi', 'Dog Gone Good'),
		('Grumpy Cat is Gone', 'Dog Gone Good'),
		('Dogs vs Cats', 'Dog Gone Good'),
		('Do Me a Favor, Love Your Dog', 'Dog Gone Good'),
		('Halfway In, Halfway Out', 'Halfway House'),
		('Little Fires Everywhere', 'Random House'),
		('The Silent Patient', 'Random House'),
		('Sold on a Monday', 'Random House'),
		('Who Cares Really', 'Locals Only'),
		('Too Little Too Late', 'Locals Only'),
		('Whatever', 'Locals Only')
	;

	CREATE TABLE borrower (
			card# INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
			borrowerName VARCHAR(30) NOT NULL,
			borrowerAddr VARCHAR(30) NOT NULL,
			borrowerPhone VARCHAR(30) NOT NULL
		);

	INSERT INTO borrower
		(borrowerName, borrowerAddr, borrowerPhone)
		VALUES
		('Graham Massey', '808 State St.', '312-808-1960'),
		('Gordon Gano', '888 Punk Rock Way', '312-123,1963'),
		('Trent Reznor', '343 Mariqueen Pl.', '312-999-1965'),
		('Robert Smith', '1988 Poole Pl.', '312-777-1959' ),
		('Susan Ballion', '76 Siouxsie Way', '312-505-1957'),
		('Peretz Bernstein', '85 Jane Says Ave.', '312-290-1959'),
		('Liam Howlett', '1990 Braintree St.', '312-242-1990'),
		('Dirk Bergen', '242 Front St.', '312-242-1981'),
		('Al Jourgensen', '23 Ministry Pl.', '312-242-1984'),
		('Norman Cook', '8 Fatboy St.', '312-888-1963'),
		('Micahel Diamond', '8 Beastie Pl.', '312-420-1979')
	;

	CREATE TABLE book_copies (
		
		bookID INT FOREIGN KEY REFERENCES books(bookID),/*foreign key*/
		branchID INT FOREIGN KEY REFERENCES library_branch(branchID),/*foreign key*/
		numberCopies INT NOT NULL
	);

	INSERT INTO book_copies
		(bookID, branchID, numberCopies)
		VALUES
		(100, 001, 10),/*switched for the SK copy*/
		(101, 001, 10),
		(102, 001, 10),
		(103, 001, 10),/*switched for the SK copy*/
		(104, 001, 10),
		(105, 001, 10),
		(106, 001, 10),
		(107, 001, 10),
		(108, 001, 10),
		(109, 001, 10),

		(110, 002, 10),/*SK copy*/
		(111, 002, 10),
		(112, 002, 10),
		(113, 002, 10),/*SK copy*/
		(114, 002, 10),
		(115, 002, 10),
		(116, 002, 10),
		(117, 002, 10),
		(118, 002, 10),
		(119, 002, 10),

		(120, 003, 10),
		(100, 003, 10),
		(101, 003, 10),
		(102, 003, 10),
		(103, 003, 10),
		(104, 003, 10),
		(105, 003, 10),
		(106, 003, 10),
		(107, 003, 10),
		(108, 003, 10),

		(109, 004, 10),
		(110, 004, 10),
		(111, 004, 10),
		(112, 004, 10),
		(113, 004, 10),
		(114, 004, 10),
		(115, 004, 10),
		(116, 004, 10),
		(117, 004, 10),
		(118, 004, 10),

		(119, 005, 10),
		(120, 005, 10),
		(101, 005, 10),
		(102, 005, 10),
		(103, 005, 10),
		(104, 005, 10),
		(105, 005, 10),
		(106, 005, 10),
		(107, 005, 10),
		(108, 005, 10),

		(109, 006, 10),
		(110, 006, 10),
		(111, 006, 10),
		(112, 006, 10),
		(113, 006, 10),
		(114, 006, 10),
		(115, 006, 10),
		(116, 006, 10),
		(117, 006, 10),
		(118, 006, 10),

		(119, 007, 10),
		(120, 007, 10),
		(100, 007, 10),
		(101, 007, 10),
		(102, 007, 10),
		(103, 007, 10),
		(104, 007, 10),
		(105, 007, 10),
		(106, 007, 10),
		(107, 007, 10),

		(108, 008, 10),
		(109, 008, 10),
		(110, 008, 10),
		(111, 008, 10),
		(112, 008, 10),
		(113, 008, 10),
		(114, 008, 10),
		(115, 008, 10),
		(116, 008, 10),
		(117, 008, 10)
	;

	INSERT INTO book_copies
		(bookID, branchID, numberCopies)
		VALUES
		(100, 002, 05)
	;

	CREATE TABLE book_author (
		authorName VARCHAR(50) NOT NULL,
		bookID INT FOREIGN KEY REFERENCES books(bookID)/*foreign key*/
	);

	INSERT INTO book_author
		(authorName, bookID)
		VALUES
		('Stephen King', 100),
		('Stephen King', 101),
		('Stephen King', 102),
		('Stephen King', 103),
		('Tara Westover', 104),
		('Stephen King', 105),
		('Tom Gee', 106),
		('Lisa Jewell', 107),
		('Olive Juice', 108),
		('Rex Ruffington', 109),
		('Gabe El', 110),
		('Rex Ruffington', 111),
		('Rex Ruffington', 112),
		('Rex Ruffington', 113),
		('Tom Gee', 114),
		('Celeste Ng', 115),
		('Alex Michaelides', 116),
		('Kristina McMorris', 117),
		('Cranky Pants', 118),
		('Cranky Pants', 119),
		('Cranky Pants', 120)
	;

	CREATE TABLE book_loans (
		dueDate VARCHAR(20) NOT NULL,
		dateOut VARCHAR(20) NOT NULL,
		card# INT FOREIGN KEY REFERENCES borrower(card#),
		bookID INT FOREIGN KEY REFERENCES books(bookID),/*foreign key*/
		branchID INT FOREIGN KEY REFERENCES library_branch(branchID)/*foreign key*/
	);

	INSERT INTO book_loans
		(dueDate, dateOut, card#, bookID, branchID)
		VALUES
		('2019-07-31', '2019-07-01', 1000, 100, 001),
		('2019-07-31', '2019-07-01', 1001, 102, 002),
		('2019-07-31', '2019-07-01', 1002, 103, 003),
		('2019-07-31', '2019-07-01', 1003, 104, 004),
		('2019-07-31', '2019-07-01', 1004, 105, 005),
		('2019-07-31', '2019-07-01', 1005, 106, 006),
		('2019-07-31', '2019-07-01', 1006, 107, 007),
		('2019-07-31', '2019-07-01', 1007, 108, 008),
		('2019-07-31', '2019-07-01', 1008, 109, 001),
		('2019-07-31', '2019-07-01', 1009, 110, 002),
		('2019-07-31', '2019-07-01', 1010, 111, 003),
		('2019-06-30', '2019-07-15', 1000, 112, 004),
		('2019-06-30', '2019-07-15', 1001, 113, 005),
		('2019-06-30', '2019-07-15', 1002, 114, 006),
		('2019-06-30', '2019-07-15', 1003, 115, 007),
		('2019-06-30', '2019-07-15', 1004, 116, 008),
		('2019-06-30', '2019-07-15', 1005, 117, 001),
		('2019-06-30', '2019-07-15', 1006, 118, 002),
		('2019-06-30', '2019-07-15', 1007, 119, 003),
		('2019-06-30', '2019-07-15', 1008, 120, 004),
		('2019-06-30', '2019-07-15', 1009, 100, 005),
		('2019-06-30', '2019-07-15', 1010, 101, 006),
		('2019-07-30', '2019-08-15', 1000, 102, 007),
		('2019-07-30', '2019-08-15', 1001, 103, 008),
		('2019-07-30', '2019-08-15', 1002, 104, 001),
		('2019-07-30', '2019-08-15', 1003, 105, 002),
		('2019-07-30', '2019-08-15', 1004, 105, 003),
		('2019-07-30', '2019-08-15', 1005, 107, 004),
		('2019-07-30', '2019-08-15', 1006, 108, 005),
		('2019-07-30', '2019-08-15', 1007, 109, 006),
		('2019-07-30', '2019-08-15', 1008, 110, 007),
		('2019-07-30', '2019-08-15', 1009, 111, 008), 
		('2019-07-30', '2019-08-15', 1010, 112, 008),
		('2019-08-15', '2019-08-30', 1000, 113, 001),
		('2019-08-15', '2019-08-30', 1001, 114, 002),
		('2019-08-15', '2019-08-30', 1002, 115, 003),
		('2019-08-15', '2019-08-30', 1003, 116, 004),
		('2019-08-15', '2019-08-30', 1004, 117, 005),
		('2019-08-15', '2019-08-30', 1005, 118, 006),
		('2019-08-15', '2019-08-30', 1006, 119, 007),
		('2019-08-15', '2019-08-30', 1007, 120, 008),
		('2019-08-15', '2019-08-30', 1008, 100, 008),
		('2019-08-15', '2019-08-30', 1009, 101, 001),
		('2019-08-15', '2019-08-30', 1010, 102, 002),
		('2019-08-30', '2019-09-30', 1000, 103, 003),
		('2019-08-30', '2019-09-30', 1001, 104, 004),
		('2019-08-30', '2019-09-30', 1002, 105, 005),
		('2019-08-30', '2019-09-30', 1003, 106, 006),
		('2019-08-30', '2019-09-30', 1004, 107, 007),
		('2019-08-30', '2019-09-30', 1005, 108, 008),
		('2019-08-30', '2019-09-30', 1006, 109, 001),
		('2019-08-30', '2019-09-30', 1007, 110, 002),
		('2019-08-30', '2019-09-30', 1008, 111, 003),
		('2019-08-30', '2019-09-30', 1009, 112, 004),
		('2019-08-30', '2019-09-30', 1010, 113, 005),
		('2019-08-30', '2019-09-30', 1009, 111, 001),
		('2019-08-30', '2019-09-30', 1010, 112, 002)
	;

END

/* #1 in Step 81*/ /*# copies of 'The Lost Tribe at 'Sharpstown'*/
/*This is busted*/
--SELECT *
--FROM library_branch
--INNER JOIN book_copies ON library_branch.branchID = book_copies.branchID
--INNER JOIN books ON book_copies.bookID = books.bookID
--WHERE branchName = 'Sharpstown' and books.title = 'The Lost Tribe'
--;

/* #2 in Step 81 */ /*# copies of 'The Lost Tribe' at all libraries*/
/*This is busted too*/
--SELECT numberCopies
--FROM book_copies
--INNER JOIN books ON book_copies.bookID = books.bookID
--INNER JOIN library_branch ON book_copies.branchID = book_copies.branchID
--WHERE title = 'The Lost Tribe'
--;

/*#3 in Step 81 */ /*all borrowers' names with no books checked out*/
/*might be okay, but not sure*/
--SELECT *
--FROM borrower
--INNER JOIN book_loans ON borrower.card# = book_loans.card#
--WHERE dateOut = NULL
--;

/*#4 in Step 81*//* For each book loaned out from 'Sharpstown' and dueDate is today,
return book title, borrower's name and address*/
--SELECT title, borrower, borrowerAddr 
--FROM book_loans
--INNER JOIN 
--WHERE dueDate = '2019-07-01' AND branch_library = 001
--;

/*#5 in Step 81*/ /*for each branch return branchName and total # books loaned for each branch*/

/*#6 in Step 81*/ /*for borrowers with more than 5 books loaned out 
return name, addr, phone, and # of books loaned */

/*#7 in Step 81*/ /*for each Stephen King book return the title and number of copies at 'Central'*/



/*----------------------------------------------------------------------------------------------------*/
/*------------------------------------------Update of Answers-----------------------------------------*/
/*1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?*/
SELECT numberCopies, title
FROM library_branch
INNER JOIN book_copies ON library_branch.branchID = book_copies.branchID
INNER JOIN books ON book_copies.bookID = books.bookID
WHERE branchName = 'Sharpstown' and books.title = 'The Lost Tribe'
;

/*2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch?*/
SELECT book_copies.numberCopies, library_branch.branchName, books.title
FROM book_copies
INNER JOIN books ON book_copies.bookID = books.bookID
INNER JOIN library_branch ON book_copies.branchID = library_branch.branchID
WHERE title = 'The Lost Tribe'
;

/*3.) Retrieve the names of all borrowers who do not have any books checked out.*/
SELECT borrowerName
FROM borrower
FULL OUTER JOIN book_loans ON borrower.card# = book_loans.card#
WHERE book_loans.card# IS NULL
;

/*4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.*/
SELECT title, borrowerName, borrowerAddr 
FROM book_loans
INNER JOIN books ON book_loans.bookID = books.bookID
INNER JOIN borrower ON book_loans.card# = borrower.card#
INNER JOIN library_branch ON book_loans.branchID = library_branch.branchID
WHERE dueDate = '2019-07-31' AND library_branch.branchName = 'Sharpstown'
;


/*5.) For each library branch, retrieve the branch name and the total number
 of books loaned out from that branch.*/
--SELECT bookID, COUNT(numberCopies)
--FROM book_copies
--INNER JOIN library_branch ON book_copies.branchID = book_copies.branchID
--GROUP BY branchName
--HAVING COUNT(numberCopies) > 0 
;


/*RE WORK*/
/*5.) For each library branch, retrieve the branch name and the total number
 of books loaned out from that branch.*/
SELECT library_branch.branchName, COUNT (*)
FROM library_branch
INNER JOIN book_loans ON library_branch.branchID = book_loans.branchID
GROUP BY branchName
;


/*6.) Retrieve the names, addresses, and the number of books checked out for all borrowers 
who have more than five books checked out.*/
--SELECT COUNT(numberCopies)
--FROM book_copies
--INNER JOIN book_loans ON book_copies.bookID = book_loans.bookID
--INNER JOIN borrower ON book_copies.bookID = borrower.card#
--GROUP BY borrowerName, borrowerAddr, borrowerPhone 
--HAVING COUNT(numberCopies) > 5
;


/*RE WORK*/
/*6.) Retrieve the names, addresses, and the number of books checked out for all borrowers 
who have more than five books checked out.*/

SELECT borrowerName, borrowerAddr, COUNT(dateOut)
FROM book_loans
INNER JOIN borrower ON book_loans.card# = borrower.card#
INNER JOIN books ON book_loans.bookID = books.bookID
GROUP BY borrowerName, borrowerAddr
HAVING COUNT(dateOut) > 5


/*7.) For each book authored (or co-authored) by "Stephen King", 
retrieve the title and the number of copies 
owned by the library branch whose name is "Central".*/

SELECT books.title, book_copies.numberCopies, library_branch.branchName, book_author.authorName
FROM books
INNER JOIN book_author ON books.bookID = book_author.bookID
INNER JOIN book_copies ON books.bookID = book_copies.bookID
INNER JOIN library_branch ON book_copies.branchID = library_branch.branchID
WHERE branchName = 'Central' AND authorName = 'Stephen King'

