CREATE DATABASE pokedex;
USE pokedex;

CREATE TABLE pokemon (
	id INT PRIMARY KEY,
  	nome VARCHAR(50) NOT NULL,
  tipo_1 VARCHAR(50) NOT NULL,
  tipo_2 VARCHAR(50) NOT NULL,
  altura INT NOT NULL,
  peso INT NOT NULL,
  total_status INT NOT NULL
);

CREATE TABLE ataque (
	id INT PRIMARY KEY,
  	nome VARCHAR(50) NOT NULL,
  	tipo VARCHAR(50) NOT NULL,
  	categoria VARCHAR(50) NOT NULL,
  	poder INT NOT NULL,
  	precisao VARCHAR(50) NOT NULL,
  	pp INT NOT NULL
);

INSERT INTO pokemon VALUES
(194, 'Wooper', 'Water', 'Ground', 0.4, 8.5, 210),
(742, 'Cutiefly', 'Bug', 'Fairy', 0.1, 0.2, 304),
(681, "Aegislash", "Steel", "Ghost", 1.7, 53.0, 500),
(530, "Excadrill", "Ground", "Steel", 0.7, 40.4, 508);

INSERT INTO ataque VALUES
(001, "Thunderbolt", "Elétrico", "Especial", 90, 100, 15), 
(002, "Knock Off", "Sombrio", "Físico", 65, 100, 20),
(003, "Razor Leaf", "Grama", "Físico", 55, 95, 25),
(004, "Aura Sphere", "Lutador", "Especial", 80, "∞", 20);
