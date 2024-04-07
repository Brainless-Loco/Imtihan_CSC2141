-- Query 1: Total number of games on season 2015 
SELECT COUNT(*) AS total_games_2015
	FROM games
	WHERE season = 2015;


-- Query 2:  Info about each game along with the home team and away team names.
SELECT 
    g.gameID, g.season,  g.date, g.homeTeamID, g.awayTeamID, ht.name AS home_team_name, at.name AS away_team_name
	FROM games g
		INNER JOIN teams ht ON g.homeTeamID = ht.teamID
		INNER JOIN teams at ON g.awayTeamID = at.teamID;



-- Query 3: Total goals for a team
SELECT 
    ts.teamID,
    t.name AS team_name,
    SUM(ts.goals) AS total_goals
FROM teamstats ts
INNER JOIN teams t ON ts.teamID = t.teamID
GROUP BY ts.teamID, t.name;




-- Query 4: Players Exceeding Average Goals
SELECT 
    player_goals.playerID, player_goals.player_name, player_goals.goals
FROM (
    SELECT 
        p.playerID, p.name AS player_name, a.goals
		FROM appearances a
		JOIN players p ON a.playerID = p.playerID
) AS player_goals
WHERE player_goals.goals > (
    SELECT AVG(aa.goals)
		FROM appearances aa
)
order by player_goals.goals desc;





-- Query 5

-- Step 1
CREATE VIEW game_stats_view AS
SELECT  g.gameID, g.season, g.date, g.homeTeamID, g.awayTeamID, ts.teamID, ts.location,  ts.goals, ts.xGoals, ts.shots, ts.shotsOnTarget, (ts.goals - ts.xGoals) AS goal_difference
	FROM games g
	JOIN teamstats ts ON g.gameID = ts.gameID;

-- Step 2
SELECT * FROM game_stats_view;

-- Step 3
UPDATE teamstats SET xGoals = 2.5 WHERE gameID = 1;

-- Step 4
SELECT * FROM game_stats_view;
