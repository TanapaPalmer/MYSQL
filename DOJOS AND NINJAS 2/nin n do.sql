USE dojos_and_ninjas_schema;
INSERT INTO dojos (name) VALUES ("Ant Dojo"),("Lion Dojo"),("Horse Dojo");
SELECT * FROM dojos;

DELETE FROM dojos WHERE id < 4;

INSERT INTO dojos (name) VALUES ("Bird Dojo"),("Cat Dojo"),("Zebra Dojo");
SELECT * FROM dojos;

INSERT INTO ninjas (first_name, last_name, age,dojo_id) VALUES ("Kristy","Tee",22,4),("Bobby","Boo",28,4),("Jacob","Coacoa",33,4),
("Nancy","Max", 38,5),("Dion","Stone",18,5),("Tania","Akira",42,5),("Sabrina","Sams",40,6),("Tanuka","Sakura",23,6),("David","Watson",37,6);

SELECT * FROM dojos;

SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id=ninjas.dojo_id
WHERE dojos.id=(SELECT dojo_id FROM ninjas ORDER BY dojo_id DESC LIMIT 1);

SELECT * FROM dojos
WHERE dojos.id=(SELECT dojo_id FROM ninjas ORDER BY dojo_id DESC LIMIT 1);









