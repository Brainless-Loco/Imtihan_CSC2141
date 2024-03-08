INSERT INTO users (UserID, Username, Email, Password, FirstName, LastName, DateOfBirth, ProfilePicture)
VALUES 
  (1, 'john_doe', 'john@example.com', 'password123', 'John', 'Doe', '1990-01-01', 'profile_pic_1.jpg'),
  (2, 'jane_smith', 'jane@example.com', 'pass456', 'Jane', 'Smith', '1985-05-15', 'profile_pic_2.jpg'),
  (3, 'alice_jones', 'alice@example.com', 'securepass', 'Alice', 'Jones', '1992-09-30', 'profile_pic_3.jpg'),
  (4, 'bob_smith', 'bob@example.com', 'pass123', 'Bob', 'Smith', '1988-03-20', 'profile_pic_4.jpg'),
  (5, 'emma_davis', 'emma@example.com', 'secure456', 'Emma', 'Davis', '1995-12-10', 'profile_pic_5.jpg'),
  (6, 'mike_jackson', 'mike@example.com', 'password789', 'Mike', 'Jackson', '1982-07-05', 'profile_pic_6.jpg'),
  (7, 'susan_wilson', 'susan@example.com', 'pass789', 'Susan', 'Wilson', '1993-04-18', 'profile_pic_7.jpg'),
  (8, 'david_brown', 'david@example.com', 'secure789', 'David', 'Brown', '1989-11-25', 'profile_pic_8.jpg'),
  (9, 'lisa_taylor', 'lisa@example.com', 'passwordabc', 'Lisa', 'Taylor', '1997-06-15', 'profile_pic_9.jpg'),
  (10, 'kevin_martin', 'kevin@example.com', 'passabc', 'Kevin', 'Martin', '1984-02-08', 'profile_pic_10.jpg'),
  (11, 'carol_white', 'carol@example.com', 'secureabc', 'Carol', 'White', '1990-10-28', 'profile_pic_11.jpg'),
  (12, 'peter_thomas', 'peter@example.com', 'passwordxyz', 'Peter', 'Thomas', '1986-08-12', 'profile_pic_12.jpg'),
  (13, 'natalie_green', 'natalie@example.com', 'passxyz', 'Natalie', 'Green', '1994-03-05', 'profile_pic_13.jpg'),
  (14, 'steve_harris', 'steve@example.com', 'securexyz', 'Steve', 'Harris', '1981-12-22', 'profile_pic_14.jpg'),
  (15, 'olivia_carter', 'olivia@example.com', 'password456', 'Olivia', 'Carter', '1998-09-14', 'profile_pic_15.jpg');


INSERT INTO posts (PostID, UserID, Content, Timestamp)
VALUES 
  (1, 1, 'This is my first post!', '2024-03-08 10:00:00'),
  (2, 2, 'Hello world!', '2024-03-08 11:30:00'),
  (3, 3, 'Just sharing some thoughts.', '2024-03-08 12:45:00'),
  (4, 4, 'Feeling great today!', '2024-03-08 14:15:00'),
  (5, 5, 'New adventure begins!', '2024-03-08 15:30:00'),
  (6, 6, 'Exciting news to share!', '2024-03-08 17:00:00'),
  (7, 7, 'Weekend vibes!', '2024-03-08 18:20:00'),
  (8, 8, 'Chilling with friends.', '2024-03-08 20:00:00'),
  (9, 9, 'Nature walk today!', '2024-03-08 22:15:00'),
  (10, 10, 'Dinner with family.', '2024-03-08 23:45:00'),
  (11, 11, 'Movie night at home.', '2024-03-09 01:00:00'),
  (12, 12, 'Workout session complete!', '2024-03-09 02:30:00'),
  (13, 13, 'Cooking experiment gone right!', '2024-03-09 04:45:00'),
  (14, 14, 'Music festival memories.', '2024-03-09 06:15:00'),
  (15, 15, 'Late-night coding session.', '2024-03-09 08:00:00');
  
INSERT INTO comments (CommentID, PostID, UserID, Content, Timestamp)
VALUES 
  (1, 1, 2, 'Nice post, John!', '2024-03-08 10:15:00'),
  (2, 2, 1, 'Great to see you here!', '2024-03-08 11:45:00'),
  (3, 3, 4, 'I agree!', '2024-03-08 13:00:00'),
  (4, 4, 3, 'You always have positive vibes!', '2024-03-08 14:45:00'),
  (5, 5, 6, 'Good luck on your new adventure!', '2024-03-08 16:00:00'),
  (6, 6, 5, 'Cant wait to hear the news!', '2024-03-08 17:30:00'),
  (7, 7, 8, 'Weekend vibes indeed!', '2024-03-08 19:00:00'),
  (8, 8, 7, 'Who are you chilling with?', '2024-03-08 21:00:00'),
  (9, 9, 10, 'Nature walks are the best!', '2024-03-08 23:30:00'),
  (10, 10, 9, 'Family time is precious.', '2024-03-09 01:00:00'),
  (11, 11, 12, 'What movie did you watch?', '2024-03-09 02:45:00'),
  (12, 12, 11, 'Keep up the good work!', '2024-03-09 04:30:00'),
  (13, 13, 14, 'Share the recipe!', '2024-03-09 06:45:00'),
  (14, 14, 13, 'Favorite performance at the festival?', '2024-03-09 08:15:00'),
  (15, 15, 14, 'Late-night coding is the best!', '2024-03-09 10:00:00')
  ;

INSERT INTO friendship (FriendshipID, UserID1, UserID2, Status)
VALUES 
  (1, 1, 2, 'Accepted'),
  (2, 2, 3, 'Pending'),
  (3, 3, 4, 'Accepted'),
  (4, 4, 5, 'Blocked'),
  (5, 5, 6, 'Accepted'),
  (6, 6, 7, 'Pending'),
  (7, 7, 8, 'Accepted'),
  (8, 8, 9, 'Accepted'),
  (9, 9, 10, 'Accepted'),
  (10, 10, 11, 'Pending'),
  (11, 11, 12, 'Accepted'),
  (12, 12, 13, 'Accepted'),
  (13, 13, 14, 'Accepted'),
  (14, 14, 15, 'Pending'),
  (15, 15, 1, 'Blocked');

INSERT INTO likes (LikeID, PostID, UserID, Timestamp)
VALUES 
  (1, 1, 3, '2024-03-08 10:30:00'),
  (2, 2, 1, '2024-03-08 12:00:00'),
  (3, 3, 4, '2024-03-08 13:15:00'),
  (4, 4, 2, '2024-03-08 15:00:00'),
  (5, 5, 6, '2024-03-08 16:45:00'),
  (6, 6, 5, '2024-03-08 18:00:00'),
  (7, 7, 8, '2024-03-08 19:30:00'),
  (8, 8, 7, '2024-03-08 21:15:00'),
  (9, 9, 10, '2024-03-08 23:00:00'),
  (10, 10, 9, '2024-03-09 00:30:00'),
  (11, 11, 12, '2024-03-09 02:15:00'),
  (12, 12, 11, '2024-03-09 04:00:00'),
  (13, 13, 14, '2024-03-09 05:15:00'),
  (14, 14, 13, '2024-03-09 07:00:00'),
  (15, 15, 2, '2024-03-09 08:45:00');
  
INSERT INTO notification (NotificationID, UserID, Content, Timestamp, Status)
VALUES 
  (1, 2, 'You have a new friend request!', '2024-03-08 10:45:00', 'Unread'),
  (2, 1, 'Your post got a like!', '2024-03-08 12:15:00', 'Unread'),
  (3, 4, 'New comment on your post.', '2024-03-08 13:30:00', 'Unread'),
  (4, 2, 'Your friend request was accepted!', '2024-03-08 15:15:00', 'Unread'),
  (5, 6, 'Your post got a like!', '2024-03-08 16:30:00', 'Unread'),
  (6, 5, 'You have a new friend request!', '2024-03-08 18:00:00', 'Unread'),
  (7, 8, 'Your post got a like!', '2024-03-08 19:45:00', 'Unread'),
  (8, 7, 'You have a new friend request!', '2024-03-08 21:00:00', 'Unread'),
  (9, 10, 'Your post got a like!', '2024-03-08 22:45:00', 'Unread'),
  (10, 9, 'Your friend request was accepted!', '2024-03-09 00:00:00', 'Unread'),
  (11, 12, 'New comment on your post.', '2024-03-09 01:15:00', 'Unread'),
  (12, 11, 'Your post got a like!', '2024-03-09 03:00:00', 'Unread'),
  (13, 14, 'Your friend request was accepted!', '2024-03-09 04:15:00', 'Unread'),
  (14, 13, 'Your post got a like!', '2024-03-09 06:00:00', 'Unread'),
  (15, 2, 'You have a new friend request!', '2024-03-09 07:45:00', 'Unread');

