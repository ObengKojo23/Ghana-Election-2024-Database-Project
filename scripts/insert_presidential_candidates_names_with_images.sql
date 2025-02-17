-- Insert Presidential Candidates' names and Profile Photos


INSERT INTO PresidentialCandidates (candidate_name, party_id, candidate_image)
VALUES 
	-- Insert for Bawumia
    ('Mahamudu Bawumia', 
     (SELECT party_id FROM Parties WHERE party_name = 'New Patriotic Party'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Bawumia.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Mahama
    ('John Dramani Mahama', 
     (SELECT party_id FROM Parties WHERE party_name = 'National Democratic Congress'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Mahama.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Alan
    ('Alan John Kwadwo Kyerematen', 
     (SELECT party_id FROM Parties WHERE party_name = 'Independent Candidate Alan'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Alan.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Andrews
    ('Christian Kwabena Andrews', 
     (SELECT party_id FROM Parties WHERE party_name = 'Ghana Union Movement'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Andrews.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Lartey
    ('Daniel Augustus Lartey Jnr', 
     (SELECT party_id FROM Parties WHERE party_name = 'Great Consolidated Popular Party'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Lartey.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Twum
    ('George Twum-Barima-Adu', 
     (SELECT party_id FROM Parties WHERE party_name = 'Independent Candidate Twum'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Twum.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Bediako
    ('Nana Kwame Bediako', 
     (SELECT party_id FROM Parties WHERE party_name = 'Independent Candidate Bediako'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Bediako.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Akua Donkor
    ('Akua Donkor', 
     (SELECT party_id FROM Parties WHERE party_name = 'Ghana Freedom Party'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Donkor.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Ayariga
    ('Hassan Abdulai Ayariga', 
     (SELECT party_id FROM Parties WHERE party_name = 'All People’s Congress'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Ayariga.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Apkaloo
    ('Kofi Akpaloo', 
     (SELECT party_id FROM Parties WHERE party_name = 'Liberal Party of Ghana'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Akpaloo.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Frimpong
    ('Mohammed Frimpong', 
     (SELECT party_id FROM Parties WHERE party_name = 'National Democratic Party'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Frimpong.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Frimpomaa
    ('Nana Akosua Frimpomaa', 
     (SELECT party_id FROM Parties WHERE party_name = 'Convention People’s Party'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Frimpomaa.png', SINGLE_BLOB) AS Image)),

	 -- Insert for Koranteng
    ('Kofi Koranteng', 
     (SELECT party_id FROM Parties WHERE party_name = 'Independent Candidate Kofi'), 
     (SELECT * FROM OPENROWSET(BULK N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\img\flag_bearers\Koranteng.png', SINGLE_BLOB) AS Image));
