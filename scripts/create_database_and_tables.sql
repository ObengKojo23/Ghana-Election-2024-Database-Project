-- Create the database
CREATE DATABASE GhanaElections2024;

-- Step 1: Create the Regions Table
CREATE TABLE Regions (
    region_id INT PRIMARY KEY IDENTITY(1,1),
    region_name VARCHAR(100) NOT NULL
);

-- Step 2: Create the Constituencies Table
CREATE TABLE Constituencies (
    constituency_id INT PRIMARY KEY IDENTITY(1,1),
    constituency_name VARCHAR(100) NOT NULL,
    region_id INT,
    total_voters INT,
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

-- Step 3: Create the Polling Stations Table
CREATE TABLE PollingStations (
    polling_station_id INT PRIMARY KEY IDENTITY(1,1),
    polling_station_code VARCHAR(20) NOT NULL,
    polling_station_name VARCHAR(100) NOT NULL,
    constituency_id INT,
    FOREIGN KEY (constituency_id) REFERENCES Constituencies(constituency_id)
);

-- Step 4: Create the Parties Table with an Image Column
CREATE TABLE Parties (
    party_id INT PRIMARY KEY IDENTITY(1,1),
    party_name VARCHAR(100) NOT NULL,
    party_abbreviation VARCHAR(15) NOT NULL,
    party_flag_image VARBINARY(MAX)  -- Column for storing the image of the party's flag
);

-- Step 5: Create the Presidential Candidates Table with an Image Column
CREATE TABLE PresidentialCandidates (
    presidential_candidate_id INT PRIMARY KEY IDENTITY(1,1),
    candidate_name VARCHAR(100) NOT NULL,
    party_id INT,
    candidate_image VARBINARY(MAX),  -- Column for storing the image of the presidential candidate
    FOREIGN KEY (party_id) REFERENCES Parties(party_id)
);

-- Step 6: Create the Parliamentary Candidates Table with an Image Column
CREATE TABLE ParliamentaryCandidates (
    parliamentary_candidate_id INT PRIMARY KEY IDENTITY(1,1),
    candidate_name VARCHAR(100) NOT NULL,
    party_id INT,
    constituency_id INT,
    candidate_image VARBINARY(MAX),  -- Column for storing the image of the parliamentary candidate
    FOREIGN KEY (party_id) REFERENCES Parties(party_id),
    FOREIGN KEY (constituency_id) REFERENCES Constituencies(constituency_id)
);

-- Step 7: Create the Presidential Votes Table
CREATE TABLE PresidentialVotes (
    vote_id INT PRIMARY KEY IDENTITY(1,1),
    polling_station_id INT,
    presidential_candidate_id INT,
    votes INT,
    FOREIGN KEY (polling_station_id) REFERENCES PollingStations(polling_station_id),
    FOREIGN KEY (presidential_candidate_id) REFERENCES PresidentialCandidates(presidential_candidate_id)
);

-- Step 8: Create the Parliamentary Votes Table
CREATE TABLE ParliamentaryVotes (
    vote_id INT PRIMARY KEY IDENTITY(1,1),
    polling_station_id INT,
    parliamentary_candidate_id INT,
    votes INT,
    FOREIGN KEY (polling_station_id) REFERENCES PollingStations(polling_station_id),
    FOREIGN KEY (parliamentary_candidate_id) REFERENCES ParliamentaryCandidates(parliamentary_candidate_id)
);
