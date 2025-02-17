-- ====================================================================================
-- Script to Insert Party Names, Abbreviations, and Party Flags into the Parties Table
-- ====================================================================================

-- This script inserts records for various political parties
-- including their names, abbreviations, and corresponding 
-- party flag images. The images are imported as BLOBs 
-- using the OPENROWSET function.

-- Ensure that:
-- 1. The 'Parties' table exists with appropriate columns.
-- 2. The file paths to the images are correct.
-- 3. The SQL Server has 'Ad Hoc Distributed Queries' enabled.
	

	-- Insert for New Patriotic Party
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('New Patriotic Party', 'NPP',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\NPP.png', SINGLE_BLOB) AS Image));

-- Insert for National Democratic Congress
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('National Democratic Congress', 'NDC',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\NDC.png', SINGLE_BLOB) AS Image));

-- Insert for Independent Candidate (Alan John Kwadwo Kyerematen)
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Independent Candidate Alan', 'IND_ALAN',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\ALAN_IND.png', SINGLE_BLOB) AS Image));

-- Insert for Ghana Union Movement
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Ghana Union Movement', 'GUM',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\GUM.png', SINGLE_BLOB) AS Image));

-- Insert for Great Consolidated Popular Party
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Great Consolidated Popular Party', 'GCPP',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\GCPP.png', SINGLE_BLOB) AS Image));

-- Insert for Independent Candidate (George Twum-Barima-Adu)
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Independent Candidate Twum', 'IND_TWUM',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\TWUM_IND.png', SINGLE_BLOB) AS Image));

-- Insert for Independent Candidate (Nana Kwame Bediako)
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Independent Candidate Bediako', 'IND_BEDIAKO',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\NANA_IND.png', SINGLE_BLOB) AS Image));

-- Insert for Ghana Freedom Party
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Ghana Freedom Party', 'GFP',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\GFP.png', SINGLE_BLOB) AS Image));

-- Insert for All People’s Congress
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('All People’s Congress', 'APC',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\APC.png', SINGLE_BLOB) AS Image));

-- Insert for Liberal Party of Ghana
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Liberal Party of Ghana', 'LPG',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\LPG.png', SINGLE_BLOB) AS Image));

-- Insert for National Democratic Party
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('National Democratic Party', 'NDP',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\NDP.png', SINGLE_BLOB) AS Image));

-- Insert for Convention People’s Party
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Convention People’s Party', 'CPP',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\CPP.png', SINGLE_BLOB) AS Image));

-- Insert for Independent Candidate (Kofi Koranteng)
INSERT INTO Parties (party_name, party_abbreviation, party_flag_image)
VALUES ('Independent Candidate Kofi', 'IND_KOFI',
        (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\party_flags\KOFI_IND.png', SINGLE_BLOB) AS Image));
