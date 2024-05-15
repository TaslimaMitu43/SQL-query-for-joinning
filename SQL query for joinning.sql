CREATE DATABASE Library;

USE Library;

CREATE TABLE stuff(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(40),
    mobile VARCHAR(11)
);


INSERT INTO stuff (NAME,mobile) VALUES('Abdullah','01756737'),
('Sadman','01338686'),
('Mitu','0195767'),
('Mahin','01587347'),
('Tanjim','01687554');

SELECT * FROM stuff;

CREATE TABLE stuff_info(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    stuff_id INT NOT NULL,
    address VARCHAR(40),
    dept VARCHAR(11),
    FOREIGN KEY (stuff_id) REFERENCES stuff(id)
);


INSERT INTO stuff_info (stuff_id,address,dept) 
VALUES(1,'Uttara-3','bangla'),
(3,'Kawlar','CSE'),
(5,'Gazipur','EEE');

SELECT * FROM stuff_info;


-- INNER JOIN

SELECT t1.*,t2.* FROM  
stuff AS t1 INNER JOIN stuff_info AS t2  
ON t1.id=t2.stuff_id;

-- LEFT JOIN

SELECT t1.*,t2.* FROM  
stuff AS t1 LEFT JOIN stuff_info AS t2  
ON t1.id=t2.stuff_id;


-- RIGHT JOIN

SELECT t1.*,t2.* FROM  
stuff AS t1 RIGHT JOIN stuff_info AS t2  
ON t1.id=t2.stuff_id;




-- FULL JOIN

SELECT t1.*,t2.* FROM   
stuff AS t1 NATURAL JOIN stuff_info AS t2
WHERE t1.id=t2.stuff_id;


