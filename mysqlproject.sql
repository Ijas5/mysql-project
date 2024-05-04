-- creating database thratinteligance
create database ThreatIntelligance; 

-- Switch to the ThreatIntelligence database
USE ThreatIntelligence;

-- Create table to store threat intelligence data
CREATE TABLE ThreatIntelligence (
    IndicatorType VARCHAR(50),
    Indicator VARCHAR(255),
    ThreatType VARCHAR(50),
    ConfidenceLevel VARCHAR(50),
    LastSeen DATE,
    Source VARCHAR(100),
    Context TEXT
);

-- Insert sample data into the ThreatIntelligence table
INSERT INTO ThreatIntelligence (IndicatorType, Indicator, ThreatType, ConfidenceLevel, LastSeen, Source, Context)
VALUES 
    ('IP Address', '192.168.1.100', 'Malware', 'High', '2024-05-01', 'Vendor A', 'Associated with ransomware campaign targeting financial services.'),
    ('Domain', 'badexample.com', 'Phishing', 'Medium', '2024-04-28', 'Vendor B', 'Domain used in phishing emails aimed at collecting login credentials.'),
    ('Hash', '123abc456def789...', 'Malware', 'High', '2024-04-30', 'Open Source', 'Hash of a payload used in a targeted attack against government agencies.'),
    ('URL', 'http://malicious.com', 'C2 (Command & Control)', 'Low', '2024-05-01', 'Internal', 'URL used as a command and control server in an IoT botnet.'),
    ('Email Address', 'fraud@example.com', 'Scam', 'Medium', '2024-04-29', 'Email Gateway', 'Email address involved in business email compromise schemes.'),
    ('File Path', 'C:\\malware.exe', 'Malware', 'High', '2024-04-27', 'Vendor C', 'Path where malicious file typically installs itself in targeted attacks on Windows systems.'),
    ('Registry Key', 'HKLM\\Run\\Malicious', 'Malware', 'High', '2024-04-25', 'Industry Report', 'Registry key used to maintain persistence of malware on infected hosts.');

-- Select all records from the ThreatIntelligence table
SELECT * FROM ThreatIntelligence;

-- Select records from ThreatIntelligence where the ConfidenceLevel is 'High'
SELECT * FROM ThreatIntelligence WHERE ConfidenceLevel = 'High';

-- Select records from ThreatIntelligence where the ConfidenceLevel is 'low'
SELECT * FROM ThreatIntelligence WHERE ConfidenceLevel = 'low';

-- Select records from ThreatIntelligence where the ThreatType is 'Malware'
SELECT * FROM ThreatIntelligence WHERE ThreatType = 'Malware';

-- Select records from ThreatIntelligence where the LastScene at the time of 2024-04-27
SELECT * FROM ThreatIntelligence WHERE LastSeen = '2024-04-27';