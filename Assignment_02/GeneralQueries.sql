-- SELECT from a single table with a WHERE clause, producing a derived attribute.
SELECT Username, FirstName, LastName, CONCAT(FirstName, ' ', LastName) AS FullName
	FROM users
	WHERE UserID = 1; 


-- INNER JOIN between users and posts tables
SELECT posts.Content, users.Username
	FROM posts
	INNER JOIN users ON posts.UserID = users.UserID
	WHERE posts.UserID = 1;


-- GROUP BY statement on posts table
SELECT UserID, COUNT(PostID) AS PostCount
FROM posts
GROUP BY UserID;
