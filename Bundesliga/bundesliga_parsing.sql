/* Datenimport - csv mit ID */

/* DB */
DROP DATABASE IF EXISTS bundesliga;
CREATE DATABASE IF NOT EXISTS bundesliga;
USE bundesliga;

/* Tabelle Bundesliga*/

/* ;SeasonFrom;SeasonTo;Matchday;Day;Date;Time;Home;Guest;Score90;Score45;Score90Home;Score90Guest;Score45Home;
Score45Guest;PointsHome;PointsGuest;Aborted;Annulled;League */

CREATE TABLE IF NOT EXISTS bundesliga.new
(

	SeasonFrom VARCHAR(10) NOT NULL DEFAULT "TBA",
    Matchday VARCHAR(20) NOT NULL DEFAULT "TBA",
    Guest    VARCHAR(20) NOT NULL DEFAULT "TBA",
    Score90 VARCHAR(20) NOT NULL DEFAULT "TBA",
    Legue VARCHAR(20) NOT NULL DEFAULT "TBA"
);

/* Alle Tabellen in der DB anzeigen */
#SHOW TABLES
#(Datum,Zahlen);


DESCRIBE bundesliga.new;

 # id,Datum,Zahlen,p1,p2,Gewinn

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "Bundesliga/AllBundesliga.csv"
INTO TABLE bundesliga.new
FIELDS TERMINATED BY "," 
LINES TERMINATED BY "\n" 
IGNORE 1 ROWS
;

 
SELECT
    SeasonFROM from AS "Saison",
    League AS "Liga",
    Guest AS "Gast"
    #Gewinn AS "Einsatz (falls bekannt)"
    
         

 FROM bundesliga.new 
 
#WHERE Zahlen LIKE "1-%" AND LIKE 

#WHERE Zahlen LIKE "12-%" 
#WHERE Zahlen LIKE "%13-%" 
#WHERE Zahlen LIKE "%14-%" 







ORDER by Datum ASC LIMIT 4000
 
;
 


