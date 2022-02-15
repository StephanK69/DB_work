/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombinationen aus mehreren Feldern in neues Feld 
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
    ticker AS "SYM",
    price AS "Kurs in $",
    c_name AS "Unternehmen",
    #dividend AS"Dividende",
    #industry AS "Branche"
    CONCAT (sector, "|", industry) AS "Operations"
    
    
    
FROM stocks.ccc
-- X Zeilen ab 0
LIMIT 10,10 
;