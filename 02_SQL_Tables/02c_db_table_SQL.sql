/* ------  Strukturen UNIQUE ----- */

/* 	 
	Tabelle mit id als PRIMARY KEY --> KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/

/* DB boo lรถschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;


/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0
);


/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",35);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",31);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",25);
INSERT INTO boo.test(name,age) VALUES ("Maxine",25);



/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;

