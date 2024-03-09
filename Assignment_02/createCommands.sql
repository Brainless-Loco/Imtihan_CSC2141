CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
);


CREATE TABLE posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    Content TEXT,
    Timestamp TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Comment Table
CREATE TABLE comments (
    CommentID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    Content TEXT,
    Timestamp TIMESTAMP,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Friendship Table
CREATE TABLE friendship (
    FriendshipID INT PRIMARY KEY,
    UserID1 INT,
    UserID2 INT,
    Status VARCHAR(50),
    FOREIGN KEY (UserID1) REFERENCES Users(UserID),
    FOREIGN KEY (UserID2) REFERENCES Users(UserID)
);

-- Like Table
CREATE TABLE likes (
    LikeID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    Timestamp TIMESTAMP,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Notification Table
CREATE TABLE notification (
    NotificationID INT PRIMARY KEY,
    UserID INT,
    Content TEXT,
    Timestamp TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);