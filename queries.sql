-- Latest missions
SELECT MissionName, LaunchDate
FROM Missions
ORDER BY LaunchDate DESC;

-- Missions per rocket
SELECT RocketID, COUNT(*) AS TotalMissions
FROM Missions
GROUP BY RocketID;

-- Total missions
SELECT COUNT(*) AS TotalMissions
FROM Missions;

-- Payload stats
SELECT AVG(Weight) AS AvgPayloadWeight FROM Payloads;
SELECT MAX(Weight) AS MaxPayload FROM Payloads;

-- Total payload per mission
SELECT MissionID, SUM(Weight) AS TotalPayloadWeight
FROM Payloads
GROUP BY MissionID;

-- Full join details
SELECT 
    M.MissionName,
    R.RocketName,
    S.SiteName,
    C.CompanyName
FROM Missions M
JOIN Rockets R ON M.RocketID = R.RocketID
JOIN LaunchSites S ON M.SiteID = S.SiteID
JOIN SpaceCompanies C ON R.CompanyID = C.CompanyID;