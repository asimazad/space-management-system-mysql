INSERT INTO SpaceCompanies (CompanyName, Country) VALUES
('SpaceX','USA'),
('Blue Origin','USA'),
('ISRO','India');

INSERT INTO Rockets (RocketName, PayloadCapacity, CompanyID) VALUES
('Falcon 9',22800,1),
('New Glenn',45000,2),
('GSLV Mk3',40000,3);

INSERT INTO LaunchSites (SiteName, Location) VALUES
('Kennedy Space Center','USA'),
('Sriharikota','India'),
('Cape Canaveral','USA');

INSERT INTO Missions (MissionName, MissionType, RocketID, SiteID, LaunchDate) VALUES
('Starlink Mission','Satellite',1,1,'2025-04-10'),
('Moon Probe','Research',3,2,'2025-05-15'),
('Mars Research','Exploration',2,3,'2025-06-20');