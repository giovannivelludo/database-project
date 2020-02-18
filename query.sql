SELECT NULL AS "1. Medagliere: data un'olimpiade, trovare per ogni nazione quante squadre si sono classificate rispettivamente in 1a, 2a e 3a posizione. Ordinare in base agli ori, se pari in base agli argenti, se pari in base ai bronzi.";

SELECT NULL AS "2. Classifica di una competizione, mostrando la nazione delle varie squadre.";

    SELECT Squadra, Sesso, Disciplina, Sport, Olimpiade, Posizione Classifica
    FROM Partecipa
        JOIN Squadra ON (Partecipa.Squadra=Squadra.ID) 
    WHERE Sesso ='X' AND Disciplina='Y' AND Sport='Z' AND Olimpiade ='W'

SELECT NULL AS "3. Trovare squadre e competizioni sponsorizzate dallo sponsor dato.";

    SELECT *
    FROM Sponsorizza
    WHERE Sponsor ='X'
    UNION
    SELECT *
    FROM Finanzia
    WHERE Sponsor ='X'

SELECT NULL AS "4. Dato un atleta, lista delle competizioni in cui si è classificato in una delle prime 3 posizioni, con la posizione.";

    SELECT *
    FROM FaParte NATURAL JOIN Partecipa
    WHERE Atleta='X' AND PosizioneClassifica < 3
    
SELECT NULL AS "5. Elenco in ordine cronologico delle olimpiadi, con città e nazioni ospitanti";

    SELECT Anno, Nome, Nazione
    FROM OlimpiadeUniversitaria 
        JOIN Città on (OlimpiadeUniversitaria.Città=Città.ID)
    ORDER BY Anno ASC

SELECT NULL AS "6. Trovare per ogni università quante medaglie sono state vinte dai propri studenti (suddivise in base al tipo di medaglia, per tutte le olimpiadi della storia). Ordinare in base agli ori, se pari in base agli argenti, se pari in base ai bronzi.";
    
    SELECT Nome, Ori, Argenti, Bronzi
    FROM Università
    ORDER BY Ori DESC, Argenti DESC, Bronzi DESC

SELECT NULL AS "7. Dato uno sport, restituire la classifica degli atleti che hanno vinto più medaglie, ordinando per numero di ori, eventualmente per argenti e bronzi.";
    
    SELECT Atleta, COUNT(DISTINCT PosizioneClassifica) AS Num
    FROM Partecipa NATURAL JOIN FaParte
    WHERE Sport='X'
    GROUP BY Atleta
    HAVING PosizioneClassifica < 3 ???
    ORDER BY Num DESC

SELECT NULL AS "8. Data un'olimpiade, elenco delle competizioni e per ciascuna mostrare la squadra vincitrice, con la relativa nazione.";

    SELECT Sesso, Disciplina, Sport, Squadra, Nazione
    FROM Partecipa
        JOIN Squadra ON (Partecipa.Squadra=Squadra.ID)
    WHERE Olimpiade='X' AND PosizioneClassifica = 1
    
