/* Datenimport - csv mit ID */

/* DB */
DROP DATABASE IF EXISTS lotto;
CREATE DATABASE IF NOT EXISTS lotto;
USE lotto;

/* Tabelle Lotto*/



CREATE TABLE IF NOT EXISTS lotto.new
(
	#id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Datum VARCHAR(10) NOT NULL DEFAULT "TBA",
    Zahlen VARCHAR(20) NOT NULL DEFAULT "TBA",
    p1 VARCHAR(20) NOT NULL DEFAULT "TBA",
    p2 VARCHAR(20) NOT NULL DEFAULT "TBA",
    Gewinn VARCHAR(20) NOT NULL DEFAULT "TBA"
);

/* Alle Tabellen in der DB anzeigen */
#SHOW TABLES
#(Datum,Zahlen);


DESCRIBE lotto.new;

 # id,Datum,Zahlen,p1,p2,Gewinn

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "05_SQL_SELECT/data/lottozahlen_archiv.csv"
INTO TABLE lotto.new
FIELDS TERMINATED BY "," 
LINES TERMINATED BY "\n" 
IGNORE 1 ROWS
;

 
SELECT
    Datum AS "Datum",
    Zahlen AS "Gewinnzahlen"
    #Gewinn AS "Einsatz (falls bekannt)"
    
         

 FROM lotto.new 
 
WHERE Zahlen LIKE "%39-40-41%"     #-20-25-3"  
 
ORDER by Datum ASC LIMIT 4000
 
;
 


