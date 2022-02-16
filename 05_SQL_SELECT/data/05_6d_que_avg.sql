/* Aggregation MIN/MAX */


-- Preis der teuersten/günstigsten Aktie?

/*
SELECT
#max(price) "Max. Preis"
#min(price) "Min. Preis"
FROM stocks.ccc
;
*/




#SELECT max(price) "Max. Preis" FROM stocks.ccc;
#SELECT min(price) "Min. Preis" FROM stocks.ccc;


/*
SELECT
ticker SYM,
c_name AS Unternehmen, 
price AS "Kurs in §"
FROM stocks.ccc
-- SUBQUERY, hier: zeig mir den max./min. Wert
WHERE price = (SELECT max(price) "Max. Preis" FROM stocks.ccc) 
WHERE price = (SELECT min(price) "Min. Preis" FROM stocks.ccc) 

;
*/
-- Welches Unternehmen hat die längste Div.-Historie ?
SELECT
ticker AS "SYM",
c_name AS Unternehmen,
price Aktienkurs
FROM stocks.ccc
ORDER BY no_yrs DESC
LIMIT 1
;





