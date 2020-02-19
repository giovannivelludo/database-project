SELECT NULL AS "1. Medagliere: data un'olimpiade, trovare per ogni nazione quante squadre si sono classificate rispettivamente in 1a, 2a e 3a posizione. Ordinare in base agli ori, se pari in base agli argenti, se pari in base ai bronzi.";

	SELECT Nazione, Ori, Argenti, Bronzi
	FROM Nazione_Olimpiade
	WHERE Olimpiade = 2019 -- rimpiazzare con olimpiade data
	ORDER BY Ori DESC, Argenti DESC, Bronzi DESC;

SELECT NULL AS "2. Classifica di una competizione, mostrando la nazione delle varie squadre.";

	SELECT Squadra, Nazione, Sesso, Disciplina, Sport, Olimpiade, PosizioneClassifica
	FROM Partecipa
	JOIN Squadra ON (Partecipa.Squadra=Squadra.ID)
	WHERE Sesso ='M' AND Disciplina='50 m stile libero' AND Sport='Nuoto' AND Olimpiade ='2019'; -- rimpiazzare con dati competizione

SELECT NULL AS "3. Trovare squadre e competizioni sponsorizzate dallo sponsor dato.";

    SELECT Sponsor, null AS Sesso, null AS Disciplina, null AS Sport, null AS Olimpiade, Squadra
    FROM Sponsorizza
    WHERE Sponsor ='Nike, Inc.' -- rimpiazzare con sponsor dato
    UNION
    SELECT Sponsor, Sesso, Disciplina, Sport, Olimpiade, null
    FROM Finanzia
    WHERE Sponsor ='Nike, Inc.'; -- rimpiazzare con sponsor dato

SELECT NULL AS "4. Dato un atleta, lista delle competizioni in cui si � classificato in una delle prime 3 posizioni, con la posizione.";

    SELECT Sesso, Disciplina, Sport, Olimpiade, PosizioneClassifica
    FROM FaParte NATURAL JOIN Partecipa
    WHERE Atleta='9' AND PosizioneClassifica <= 3; -- rimpiazzare con Id atleta
    
SELECT NULL AS "5. Elenco in ordine cronologico delle olimpiadi, con citt� e nazioni ospitanti";

    SELECT Anno, Nome AS Citt�, Nazione
    FROM OlimpiadeUniversitaria 
        JOIN Citt� on (OlimpiadeUniversitaria.Citt�=Citt�.ID)
    ORDER BY Anno ASC;

SELECT NULL AS "6. Trovare per ogni universit� quante medaglie sono state vinte dai propri studenti (suddivise in base al tipo di medaglia, per tutte le olimpiadi della storia). Ordinare in base agli ori, se pari in base agli argenti, se pari in base ai bronzi.";
    
    SELECT Nome, Ori, Argenti, Bronzi
    FROM Universit�
    ORDER BY Ori DESC, Argenti DESC, Bronzi DESC;

SELECT NULL AS "7. Dato uno sport, restituire la classifica degli atleti che hanno vinto pi� medaglie, ordinando per numero di ori, eventualmente per argenti e bronzi.";
    
    SELECT Atleta, COUNT(DISTINCT PosizioneClassifica) AS Num
    FROM Partecipa NATURAL JOIN FaParte
    WHERE Sport='X'
    GROUP BY Atleta
    HAVING PosizioneClassifica < 3 ???
    ORDER BY Num DESC;

SELECT NULL AS "8. Data un'olimpiade, elenco delle competizioni e per ciascuna mostrare la squadra vincitrice, con la relativa nazione.";

    SELECT Sesso, Disciplina, Sport, Squadra, Nazione
    FROM Partecipa
        JOIN Squadra ON (Partecipa.Squadra=Squadra.ID)
    WHERE Olimpiade='2019' AND PosizioneClassifica = 1;
    
