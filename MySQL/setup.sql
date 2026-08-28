-- Loja de Roupas Online

CREATE TABLE cliente_um (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefones_adicionais INT NOT NULL
);

CREATE TABLE produto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    preco DECIMAL NOT NULL,
    categoria VARCHAR(60) NOT NULL
);

CREATE TABLE pedido0 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY(cliente_nome) REFERENCES nome(cliente_um),
    data_pedido DATE,
    FOREIGN KEY(produto_id) REFERENCES id(produto)
);

CREATE TABLE fornecedor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    produtos_fornecidos VARCHAR(60) NOT NULL
);




-- Academia de Ginástica:

CREATE TABLE aluno (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    CPF INT NOT NULL,
    planos_contratados VARCHAR(60) NOT NULL,
    aulas_inscritas VARCHAR(60) NOT NULL
);

CREATE TABLE plano (
	id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(60) NOT NULL,
    valor_mensal INT NOT NULL
);

CREATE TABLE personal (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    especialidade VARCHAR(60) NOT NULL
);

CREATE TABLE treino (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY(id_aluno) REFERENCES aluno(id),
    nome_personal VARCHAR(60) NOT NULL,
    data_treino DATE
);

CREATE TABLE aula_coletiva (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    horario TIME,
    capacidade INT NOT NULL
);







-- iFreud

CREATE TABLE restaurante (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    cardapio VARCHAR(60) NOT NULL
);

CREATE TABLE cliente (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    endereco VARCHAR(60) NOT NULL,
    solicitacao VARCHAR(60) NOT NULL
);

CREATE TABLE pedido (
	id INT PRIMARY KEY AUTO_INCREMENT,
    pratos VARCHAR(60) NOT NULL,
    FOREIGN KEY(solicitacao_cliente) REFERENCES cliente(solicitacao)
);

CREATE TABLE item_pedido (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY(prato_item_pedido) REFERENCES pedido(pratos)
);

CREATE TABLE prato (
	id INT PRIMARY KEY AUTO_INCREMENT,
    comida VARCHAR(60) NOT NULL
);

CREATE TABLE entregador (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY(endereco_entrega) REFERENCES cliente(endereco),
    FOREIGN KEY(id_pedido) REFERENCES pedido(id)
);





-- Biblioteca do Bairro