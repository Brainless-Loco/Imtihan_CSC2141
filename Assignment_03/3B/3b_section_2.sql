-- Dropping the procedure if exists for InsertPlayer
DROP PROCEDURE IF EXISTS InsertPlayer;

-- Stored Procedure 1: InsertPlayer
DELIMITER //
CREATE PROCEDURE InsertPlayer(
    IN playerName VARCHAR(255),
    OUT newPlayerID INT
)
BEGIN
    -- Declaring the temporary variables
    DECLARE maxID INT;

    -- Starting the transaction
    START TRANSACTION;

    -- Getting the maximum existing playerID
    SELECT IFNULL(MAX(playerID), 0) INTO maxID FROM players;

    -- Incrementing the maximum ID to generate the new playerID
    SET newPlayerID = maxID + 1;

    -- inserting the player into the database
    INSERT INTO players (playerID, name) VALUES (newPlayerID, playerName);

    -- Commit this transaction
    COMMIT;
END //
DELIMITER ;

-- A temporary variable
SET @newPlayerID = NULL;

-- Call InsertPlayer and retrieve the new player ID directly
CALL InsertPlayer('John Doe', @newPlayerID);

SELECT @newPlayerID AS NewPlayerID;





-- Dropping the procedure if exists for UpdatePlayer
DROP PROCEDURE IF EXISTS UpdatePlayer;

DELIMITER //
CREATE PROCEDURE UpdatePlayer(
    IN p_playerId INT,
    IN p_newPlayerName VARCHAR(255)
)
BEGIN

    START TRANSACTION;


    UPDATE players SET name = p_newPlayerName WHERE playerID = p_playerId LIMIT 1;


    COMMIT;
END //
DELIMITER ;



-- Example CALL statement for UpdatePlayerName
CALL UpdatePlayer(9800, 'Jane Doe');

select * from players where name = 'Jane Doe';



-- SET SQL_SAFE_UPDATES = 0;
