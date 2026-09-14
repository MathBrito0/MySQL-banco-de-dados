-- 1. Tabelas Independentes
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    semestre VARCHAR(10) NOT NULL
);

-- 2. Tabela Dependente
CREATE TABLE matricula (
    id_aluno INT,
    id_turma INT,
    data_matricula DATE NOT NULL,
    PRIMARY KEY (id_aluno, id_turma),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE curso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carga_horaria INT NOT NULL,
    mensalidade DECIMAL(10,2)
);

-- 3. Inserção de Dados
INSERT INTO aluno (nome, data_nascimento) VALUES
('Ana Costa Silva', '2005-03-15'),
('Pedro Lima', '2004-07-22'),
('João Marcos Santos', '2006-01-10'),
('Mariana Oliveira', '2005-11-05'),
('Lucas Costa', '2003-09-30'),
('Amanda Nogueira', '2004-05-12'),
('Carlos Eduardo', '2006-12-01');

INSERT INTO turma (nome_disciplina, semestre) VALUES
('Banco de Dados', '2026.1'),
('Lógica de Programação', '2026.1'),
('Redes de Computadores', '2026.2'),
('Engenharia de Software', '2026.2');

INSERT INTO matricula (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2026-02-10'),
(1, 2, '2026-02-12'),
(2, 1, '2026-02-15'),
(3, 3, '2026-08-01'),
(4, 4, '2026-08-05'),
(5, 1, '2026-02-20'),
(6, 2, '2026-02-11');

INSERT INTO curso (id, carga_horaria, mensalidade) VALUES
(1, 20, 3500.00),
(2, 100, 2500.00),
(3, 250, 1500.00);

SELECT * FROM aluno
WHERE YEAR(data_nascimento) > 2003 ;

SELECT * FROM curso
WHERE carga_horaria BETWEEN 100 AND 300
ORDER BY mensalidade DESC ;


-- Criação da View
SELECT
  a.nome AS Nome_do_Aluno,
  t.nome_disciplina AS Nome_da_Disciplina
FROM aluno a
INNER JOIN matricula m ON a.id_aluno = m.id_aluno
INNER JOIN turma t ON m.id_turma = t.id_turma;
