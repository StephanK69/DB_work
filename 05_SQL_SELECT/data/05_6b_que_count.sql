/* QUERIES - count()*/



/* Links:
https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/
-- Welche VERSCHIEDENEN Sektoren gibt es?

/*
SELECT
DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;

-- Welche VERSCHIEDENEN Sektoren gibt es?
SELECT
    count(DISTINCT sector) "Anzahl Industriesektoren"
FROM stocks.ccc
;
*/
-- Welche VERSCHIEDENEN Branchen ?
/*
SELECT
DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC
;


-- Welche VERSCHIEDENEN Branchen ?

SELECT
count(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc

;
*/

-- Wieviele VERSCHIEDENE Branchen gibt es
-- in den jeweiligen Industriesektoren?

SELECT
sector Industriesektoren,  -- nicht aggregiert /organisch
count(DISTINCT industry) AS Branchen -- aggregiert, durch eine Funktion entstanden
FROM stocks.ccc
WHERE sector LIKE "Co%" -- Filter in NICHT organischen, bzw. aggrigierten Feldern (Spalten)
GROUP BY sector -- bei Kombination organisch, bzw. aggregiert
HAVING Branchen > 10 -- Filter in aggr. Feldern / nach GROUP
ORDER BY Branchen DESC
;






