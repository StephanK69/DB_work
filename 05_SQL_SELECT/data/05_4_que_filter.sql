/* QUERIES Filtern mit WHERE */



/*
Eingrenzen/Filtern WHERE & AND/OR etc.
Eingrenzen/Filtern WHERE & LIKE + Parameter
Eingrenzen/Filtern WHERE & RegEx
Eingrenzen/Filtern WHERE & IN / NOT IN
Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/



-- Eingrenzen/Filtern WHERE & AND/OR etc.
-- Scharfe Suche

SELECT
    ticker AS "SYM",
     c_name AS "Unternehmen",
    price AS "Kurs in $",
    payouts AS "Zahlung p.a.",
    dividend AS "Dividende",
    #industry AS "Branche"
    CONCAT (sector, "|", industry) AS "Operations"    
FROM stocks.ccc
-- Einzeldaten / Strings
# WHERE sector = "Media"  -- spez. Sektor
#WHERE sector = "Communication Services" AND industry = "Entertainment"
#WHERE sector = "Communication Services" 
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media")
WHERE sector = "Communication Services" AND NOT industry = "Media"


-- Sortierung

ORDER BY industry DESC

-- Begrenzung
LIMIT 40
;


