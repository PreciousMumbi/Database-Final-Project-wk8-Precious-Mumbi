CREATE DATABASE Library;
USE Library;
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    BookID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);



USE Library;
INSERT INTO Categories (CategoryName) VALUES ('Fiction'), ('Science'), ('Technology');
INSERT INTO Books (Title, Author, ISBN, CategoryID) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9781234567890', 1),
('A Brief History of Time', 'Stephen Hawking', '9781234567891', 2);

INSERT INTO Members (FullName, Email, Phone) VALUES
('John Doe', 'john@example.com', '123456789'),
('Jane Smith', 'jane@example.com', '987654321');

INSERT INTO Loans (MemberID, BookID, LoanDate, ReturnDate) VALUES
(1, 1, '2024-01-01', '2024-01-15'),
(2, 2, '2024-02-01', NULL);