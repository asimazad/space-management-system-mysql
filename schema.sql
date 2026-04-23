CREATE DATABASE SpaceLaunchManagement;
USE SpaceLaunchManagement;

CREATE TABLE SpaceCompanies (
    CompanyID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE Rockets (
    RocketID INT AUTO_INCREMENT PRIMARY KEY,
    RocketName VARCHAR(100) NOT NULL,
    PayloadCapacity INT,
    CompanyID INT,
    FOREIGN KEY (CompanyID) REFERENCES SpaceCompanies(CompanyID)
);

CREATE TABLE LaunchSites (
    SiteID INT AUTO_INCREMENT PRIMARY KEY,
    SiteName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Missions (
    MissionID INT AUTO_INCREMENT PRIMARY KEY,
    MissionName VARCHAR(100),
    MissionType VARCHAR(50),
    RocketID INT,
    SiteID INT,
    LaunchDate DATE,
    FOREIGN KEY (RocketID) REFERENCES Rockets(RocketID),
    FOREIGN KEY (SiteID) REFERENCES LaunchSites(SiteID)
);

CREATE TABLE Payloads (
    PayloadID INT AUTO_INCREMENT PRIMARY KEY,
    PayloadName VARCHAR(100),
    Weight INT,
    MissionID INT,
    FOREIGN KEY (MissionID) REFERENCES Missions(MissionID)
);