/* ------  Strukturen UNIQUE ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo; -- oder boo.xxx

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
	name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0
);

#test

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES ();

-- Doppelte Datensätze werden zugelassen !
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo, der Coole!");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;
