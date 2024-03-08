CREATE TABLE users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DateOfBirth DATE,
    ProfilePicture VARCHAR(255)
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