CREATE DATABASE hotel;

USE hotel;

CREATE TABLE employees(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(150) NOT NULL, 
address VARCHAR(150) NOT NULL,
telephone VARCHAR(30) NOT NULL,
id_dep INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_dep) REFERENCES employees_departament(id)
)DEFAULT CHARSET = utf8;

INSERT INTO employees VALUES
(DEFAULT, "Aria", "C. Rambla, 5", "654654987", "1"),
(DEFAULT, "Sergio", "C. Rusta, 6", "628654987", "1"),
(DEFAULT, "Mura", "C. Fafta, 3", "657489987", "1"),
(DEFAULT, "Jana", "C. Groga, 1", "657892987", "3"),
(DEFAULT, "Furia", "C. Max, 75", "854364987", "3"),
(DEFAULT, "Arunda", "C. JK, 10", "785469587", "4"),
(DEFAULT, "Bruno", "C. Hista, 15", "325654987", "4"),
(DEFAULT, "Mary", "C. Ara, 14", "569549287", "2");



CREATE TABLE employees_departament(
  id INT NOT NULL AUTO_INCREMENT,
  dep VARCHAR(30) NOT NULL UNIQUE, 
 PRIMARY KEY (id) 
)DEFAULT CHARSET = utf8;

INSERT INTO employees_departament VALUES
(DEFAULT, "Reception"),
(DEFAULT, "F&B"),
(DEFAULT, "Cleaning"),
(DEFAULT, "Maintenance");



CREATE TABLE clients(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(150) NOT NULL, 
document VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,  
PRIMARY KEY (id) 
)DEFAULT CHARSET = utf8;

INSERT INTO clients VALUES
(DEFAULT, "Julia", "020356", 'j@mail.com'),
(DEFAULT, "Marco", "h2145j896", 'm@mail.com'),
(DEFAULT, "Sana", "FK256987", 's@mail.com'),
(DEFAULT, "Octavio", "1258965", 'o@mail.com'),
(DEFAULT, "Alesandra", "1vfs3546", 'a@mail.com'),
(DEFAULT, "Julia B.", "134657", 'jb@mail.com'),
(DEFAULT, "Breno", "65487JH", 'b@mail.com'),
(DEFAULT, "Miriam", "654987331235", 'mi@mail.com');

INSERT INTO clients VALUES
(DEFAULT, "Julian", "020356", "ju@mail.com"),
(DEFAULT, "Marcque", "h2145j896", "54m@mail.com"),
(DEFAULT, "Sanu", "FK256987", "2ws@mail.com"),
(DEFAULT, "Otavio", "1258965", "kjo@mail.com"),
(DEFAULT, "Alexandra", "1vfs3546", "a321@mail.com"),
(DEFAULT, "Julia C.", "134657", "jben@mail.com"),
(DEFAULT, "Hun", "vfsd", "vdf@mail.com"),
(DEFAULT, "Shana", "rr4w", "mhj@mail.com"),
(DEFAULT, "Tatiana", "j67i67", "ntm@mail.com"),
(DEFAULT, "Goba", "bkjñkñl", "y54@mail.com"),
(DEFAULT, "Walter", "dfvvdf", "nghgf@mail.com"),
(DEFAULT, "Leandro", "sDFR23", "ndgf3@mail.com"),
(DEFAULT, "Putty", "VDF34", "bnf34@mail.com"),
(DEFAULT, "Ai", "h56yu57", "ver4@mail.com"),
(DEFAULT, "Monha", "gf342", "3214@mail.com"),
(DEFAULT, "Goby", "546", "f34@mail.com"),
(DEFAULT, "Tuti", "89ij78", "ngh@mail.com"),
(DEFAULT, "Nina", "mhjdd", "dfvdfv@mail.com"),
(DEFAULT, "Oswaldo", "gre34f", "23423f4@mail.com"),
(DEFAULT, "Quiara", "hty67", "v3vgf35r@mail.com"),
(DEFAULT, "Katia", "bf4etgh", "f34eg56@mail.com"),
(DEFAULT, "Miria", "654987331235", "mi7@mail.com");




CREATE TABLE rvas(
id INT NOT NULL AUTO_INCREMENT,
ck_in DATE NOT NULL,
ck_out DATE NOT NULL,
id_cli INT,  
PRIMARY KEY (id),
FOREIGN KEY (id_cli) REFERENCES clients(id)
)DEFAULT CHARSET = utf8;

INSERT INTO rvas VALUES
(DEFAULT, "2021-09-01", "2021-09-03", "1"),
(DEFAULT, "2021-09-15", "2021-09-21", "5"),
(DEFAULT, "2021-09-13", "2021-09-14", "3"),
(DEFAULT, "2021-09-07", "2021-09-09", "7"),
(DEFAULT, "2021-09-01", "2021-09-05", "4"),
(DEFAULT, "2021-09-02", "2021-09-03", "11"),
(DEFAULT, "2021-09-03", "2021-09-05", "2"),
(DEFAULT, "2021-09-03", "2021-09-09", "17"),
(DEFAULT, "2021-09-04", "2021-09-07", "2"),
(DEFAULT, "2021-09-07", "2021-09-09", "3"),
(DEFAULT, "2021-09-09", "2021-09-10", "10"),
(DEFAULT, "2021-09-08", "2021-09-09", "8"),
(DEFAULT, "2021-09-11", "2021-09-13", "13"),
(DEFAULT, "2021-09-11", "2021-09-14", "14"),
(DEFAULT, "2021-09-11", "2021-09-12", "13"),
(DEFAULT, "2021-09-11", "2021-09-13", "19"),
(DEFAULT, "2021-09-10", "2021-09-11", "4"),
(DEFAULT, "2021-09-05", "2021-09-06", "4"),
(DEFAULT, "2021-09-12", "2021-09-13", "12"),
(DEFAULT, "2021-09-25", "2021-09-28", "20"),
(DEFAULT, "2021-09-14", "2021-09-17", "8"),
(DEFAULT, "2021-09-14", "2021-09-18", "3"),
(DEFAULT, "2021-09-09", "2021-09-13", "3"),
(DEFAULT, "2021-09-12", "2021-09-16", "7"),
(DEFAULT, "2021-09-22", "2021-09-23", "9"),
(DEFAULT, "2021-09-26", "2021-09-27", "1"),
(DEFAULT, "2021-09-29", "2021-09-30", "7"),
(DEFAULT, "2021-09-17", "2021-09-20", "13"),
(DEFAULT, "2021-09-16", "2021-09-14", "13"),
(DEFAULT, "2021-09-19", "2021-09-20", "17"),
(DEFAULT, "2021-09-16", "2021-09-18", "8"),
(DEFAULT, "2021-09-09", "2021-09-10", "9"),
(DEFAULT, "2021-09-13", "2021-09-14", "9"),
(DEFAULT, "2021-09-15", "2021-09-16", "4");

