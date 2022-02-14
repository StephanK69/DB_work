/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    user_pwd VARCHAR(40) NOT NULL,
    family_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
-- Nachteil: PWDs liegen offen! 
INSERT INTO 
    boo.users(user_name,user_pwd,family_name,first_name) 
VALUES 
    ("max","1234","Mütze","Max"),
    ("maxine","#7xD0","Mützerich","Maxine"),
    ("maxl","user1234","Mützerich","Max")
;


/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;
