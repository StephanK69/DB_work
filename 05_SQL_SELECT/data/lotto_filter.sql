/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschr채nken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombinationen aus mehreren Feldern in neues Feld 
-- hier mit Verkn체pfung CONCAT() // String-Fkt.
SELECT
    Datum ,
     Zahlen AS "Gewinnzahlen",
    #price AS "Kurs in $",
    #no_yrs AS "Jahre''",
   
    #dividend AS"Dividende",
    #industry AS "Branche"
    #CONCAT (sector, "|", industry) AS "Operations"
    
    
    
    
FROM lotto.new
#ORDER BY ticker ASC
#ORDER BY ticker DESC 

#ORDER BY price ASC -- Kurs, beginnend mit der g체nstigsten Aktie
#ORDER BY price DESC -- Kurs, beginnt mit der teuerste Aktie
#ORDER BY no_yrs DESC -- Aktien mit der l채ngsten Div.-Historie 

#ORDER BY Datum DESC #industry ASC -- Kombination ASC / DESC alphabet.
#ORDER BY no_yrs DESC, sector ASC -- Kombination ASC / DESC alphabet. / numerisch





-- X Zeilen ab 0
#LIMIT 40 

;