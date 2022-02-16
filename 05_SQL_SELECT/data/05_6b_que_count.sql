-- alle Sektoren




/*SELECT
DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY industry ASC
;
*/

-- welche VERSCHIEDENEN Auszahlungs-Rhythmen gibt es?
SELECT
DISTINCT payouts "Auszahlungen p.a."
FROM stocks.ccc
ORDER BY payouts ASC;

-- Welche Unternehmen zahlen monatlich?
SELECT 
  c_name Branche, 
  industry Unternehmen,
  ticker "DOW-Symbol"
FROM stocks.ccc
WHERE payouts = 12
ORDER BY Branche ASC
;



