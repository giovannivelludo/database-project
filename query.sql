-- Query 1
	SELECT Nazione, Ori, Argenti, Bronzi
	FROM Nazione_Olimpiade
	WHERE Olimpiade = 2019 -- rimpiazzare con olimpiade data
	ORDER BY Ori DESC, Argenti DESC, Bronzi DESC;

-- Query 2
	SELECT Squadra, Nazione, Sesso, Disciplina, Sport, Olimpiade, PosizioneClassifica
	FROM Partecipa
	JOIN Squadra ON (Partecipa.Squadra=Squadra.ID)
	WHERE Sesso ='M' AND Disciplina='50 m stile libero' AND Sport='Nuoto' AND Olimpiade ='2019' -- rimpiazzare con dati competizione
	ORDER BY PosizioneClassifica ASC;

-- Query 3
	SELECT Sponsor, null AS Sesso, null AS Disciplina, null AS Sport, null AS Olimpiade, Squadra
    FROM Sponsorizza
    WHERE Sponsor ='Nike, Inc.' -- rimpiazzare con sponsor dato
    UNION
    SELECT Sponsor, Sesso, Disciplina, Sport, Olimpiade, null
    FROM Finanzia
    WHERE Sponsor ='Nike, Inc.'; -- rimpiazzare con sponsor dato
    
-- Query 4
	SELECT Sesso, Disciplina, Sport, Olimpiade, PosizioneClassifica
    FROM FaParte NATURAL JOIN Partecipa
    WHERE Atleta='9' AND PosizioneClassifica <= 3; -- rimpiazzare con Id atleta
    
-- Query 5
	SELECT Anno, Nome AS Città, Nazione
    FROM OlimpiadeUniversitaria 
        JOIN Città on (OlimpiadeUniversitaria.Città=Città.ID)
    ORDER BY Anno ASC;
    
-- Query 6
	SELECT Nome, Ori, Argenti, Bronzi
    FROM Università
    ORDER BY Ori DESC, Argenti DESC, Bronzi DESC;

-- Query 7   
	DROP VIEW IF EXISTS Terzi;
	DROP VIEW IF EXISTS Secondi;
	DROP VIEW IF EXISTS Primi;
	DROP VIEW IF EXISTS Medagliati;

	CREATE VIEW Medagliati AS (SELECT *
	FROM Partecipa
	NATURAL JOIN FaParte
	WHERE Sport='Nuoto' AND PosizioneClassifica <= 3);

	CREATE VIEW Primi AS (SELECT Atleta, COUNT(Atleta) AS Ori
	FROM Medagliati
	WHERE PosizioneClassifica = 1
	GROUP BY Atleta);

	CREATE VIEW Secondi AS (SELECT Atleta, COUNT(Atleta) AS Argenti
	FROM Medagliati
	WHERE PosizioneClassifica = 2
	GROUP BY Atleta);

	CREATE VIEW Terzi AS (SELECT Atleta, COUNT(Atleta) AS Bronzi
	FROM Medagliati
	WHERE PosizioneClassifica = 3
	GROUP BY Atleta);

	SELECT * FROM Primi
	ORDER BY Ori DESC;

	SELECT * FROM Secondi
	ORDER BY Argenti DESC;

	SELECT * FROM Terzi
	ORDER BY Bronzi DESC;

	DROP VIEW IF EXISTS Terzi;
	DROP VIEW IF EXISTS Secondi;
	DROP VIEW IF EXISTS Primi;
	DROP VIEW IF EXISTS Medagliati;

-- Query 8	
	SELECT Sesso, Disciplina, Sport, Squadra, Nazione
    FROM Partecipa
        JOIN Squadra ON (Partecipa.Squadra=Squadra.ID)
    WHERE Olimpiade='2019' AND PosizioneClassifica = 1; -- rimpiazzare con olimpiade data
