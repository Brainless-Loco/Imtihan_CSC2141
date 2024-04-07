
-- Dropping schema if it exists
DROP SCHEMA IF EXISTS imtihan_03;

-- Creating the schema
CREATE SCHEMA imtihan_03;

-- Selecting the created schema for usage
USE imtihan_03;

-- Dropping tables if they exist
DROP TABLE IF EXISTS appearances;
DROP TABLE IF EXISTS teamstats;
DROP TABLE IF EXISTS shots;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS leagues;

-- Creating table `leagues`
CREATE TABLE leagues (
    leagueID INT PRIMARY KEY,
    name VARCHAR(255),
    understatNotation VARCHAR(255)
);

-- Creating table `teams`
CREATE TABLE teams (
    teamID INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Creating table `players`
CREATE TABLE players (
    playerID INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Creating table `games`
CREATE TABLE games (
    gameID INT PRIMARY KEY,
    leagueID INT,
    season INT,
    date DATETIME,
    homeTeamID INT,
    awayTeamID INT,
    homeGoals INT,
    awayGoals INT,
    homeProbability FLOAT,
    drawProbability FLOAT,
    awayProbability FLOAT,
    homeGoalsHalfTime INT,
    awayGoalsHalfTime INT,
    FOREIGN KEY (leagueID) REFERENCES leagues(leagueID),
    FOREIGN KEY (homeTeamID) REFERENCES teams(teamID),
    FOREIGN KEY (awayTeamID) REFERENCES teams(teamID)
);

-- Creating table `shots`
CREATE TABLE shots (
    shotID INT AUTO_INCREMENT PRIMARY KEY,
    gameID INT,
    shooterID INT,
    assisterID INT,
    minute INT,
    situation VARCHAR(255),
    lastAction VARCHAR(255),
    shotType VARCHAR(255),
    shotResult VARCHAR(255),
    xGoal FLOAT,
    positionX FLOAT,
    positionY FLOAT,
    FOREIGN KEY (gameID) REFERENCES games(gameID),
    FOREIGN KEY (shooterID) REFERENCES players(playerID),
    FOREIGN KEY (assisterID) REFERENCES players(playerID)
);

-- Creating table `teamstats`
CREATE TABLE teamstats (
    teamStatsID INT AUTO_INCREMENT PRIMARY KEY,
    gameID INT,
    teamID INT,
    season INT,
    date DATE,
    location VARCHAR(255),
    goals INT,
    xGoals FLOAT,
    shots INT,
    shotsOnTarget INT,
    deep INT,
    ppda FLOAT,
    fouls INT,
    corners INT,
    yellowCards INT,
    redCards INT,
    result VARCHAR(255),
    FOREIGN KEY (gameID) REFERENCES games(gameID),
    FOREIGN KEY (teamID) REFERENCES teams(teamID)
);

-- Creating table `appearances`
CREATE TABLE appearances (
    appearanceID INT AUTO_INCREMENT PRIMARY KEY,
    playerID INT,
    gameID INT,
    goals INT,
    ownGoals INT,
    shots INT,
    xGoals FLOAT,
    xGoalsChain FLOAT,
    xGoalsBuildup FLOAT,
    assists INT,
    keyPasses INT,
    xAssists INT,
    position VARCHAR(255),
    positionOrder INT,
    yellowCard BOOLEAN,
    redCard BOOLEAN,
    time INT,
    substituteIn BOOLEAN,
    substituteOut BOOLEAN,
    leagueID INT,
    FOREIGN KEY (playerID) REFERENCES players(playerID),
    FOREIGN KEY (gameID) REFERENCES games(gameID),
    FOREIGN KEY (leagueID) REFERENCES leagues(leagueID)
);

-- COMMIT;
