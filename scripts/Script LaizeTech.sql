CREATE DATABASE laize_tech;
USE laize_tech;

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(45)
);

CREATE TABLE TipoCaracteristica (
    id_tipo_caracteristica INT PRIMARY KEY AUTO_INCREMENT,
    nome_tipo_caracteristica VARCHAR(45)
);

CREATE TABLE Caracteristica (
    id_caracteristica INT PRIMARY KEY AUTO_INCREMENT,
    id_tipo_caracteristica INT,
    nome_caracteristica VARCHAR(45),
    FOREIGN KEY (id_tipo_caracteristica) REFERENCES TipoCaracteristica(id_tipo_caracteristica)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    id_categoria INT,
    nome_produto VARCHAR(100),
    dt_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    quantidade_produto INT,
    status_ativo TINYINT,
    caminho_imagem VARCHAR(45),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE ProdutoCaracteristica (
    id_produto_caracteristica INT PRIMARY KEY AUTO_INCREMENT,
    id_caracteristica INT,
    id_tipo_caracteristica INT,
    id_produto INT,
    quantidade_produto_caracteristica INT,
    FOREIGN KEY (id_caracteristica) REFERENCES Caracteristica(id_caracteristica),
    FOREIGN KEY (id_tipo_caracteristica) REFERENCES TipoCaracteristica(id_tipo_caracteristica),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE CompraProduto (
    id_compra_produto INT PRIMARY KEY AUTO_INCREMENT,
    fornecedor VARCHAR(50),
    preco_compra DECIMAL(10,2),
    dt_compra DATETIME DEFAULT CURRENT_TIMESTAMP,
    quantidade_produto INT,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(45),
    CNPJ CHAR(14)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    acesso_financeiro TINYINT,
    status_ativo TINYINT NOT NULL,
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa)
);

CREATE TABLE Plataforma (
    id_plataforma INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    nome_plataforma VARCHAR(45),
    status TINYINT,
    FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa)
);

CREATE TABLE PlataformaProduto (
    id_plataforma_produto INT PRIMARY KEY AUTO_INCREMENT,
    id_plataforma INT,
    id_produto_caracteristica INT,
    id_caracteristica INT,
    id_tipo_caracteristica INT,
    id_produto INT,
    quantidade_produto_plataforma INT,
    FOREIGN KEY (id_plataforma) REFERENCES Plataforma(id_plataforma),
    FOREIGN KEY (id_produto_caracteristica) REFERENCES ProdutoCaracteristica(id_produto_caracteristica),
    FOREIGN KEY (id_caracteristica) REFERENCES Caracteristica(id_caracteristica),
    FOREIGN KEY (id_tipo_caracteristica) REFERENCES TipoCaracteristica(id_tipo_caracteristica),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE TipoSaida (
    id_tipo_saida INT PRIMARY KEY AUTO_INCREMENT,
    nome_tipo VARCHAR(45)
);

CREATE TABLE StatusVenda (
    id_status_venda INT PRIMARY KEY AUTO_INCREMENT,
    nome_status ENUM('PENDENTE', 'FINALIZADA', 'CANCELADA')
);

CREATE TABLE Saida (
    id_saida INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    id_plataforma INT,
    id_tipo_saida INT,
    numero_pedido VARCHAR(45),
    dt_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    preco_venda DECIMAL(10,2),
    total_desconto DECIMAL(10,2),
    id_status_venda INT,
    FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa),
    FOREIGN KEY (id_plataforma) REFERENCES Plataforma(id_plataforma),
    FOREIGN KEY (id_status_venda) REFERENCES StatusVenda(id_status_venda),
    FOREIGN KEY (id_tipo_saida) REFERENCES TipoSaida(id_tipo_saida)
);

CREATE TABLE ItensSaida (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_saida INT,
    id_plataforma INT,
    quantidade INT,
    id_produto_caracteristica INT,
    id_caracteristica INT,
    id_tipo_caracteristica INT,
    id_produto INT,
    FOREIGN KEY (id_saida) REFERENCES Saida(id_saida),
    FOREIGN KEY (id_plataforma) REFERENCES Plataforma(id_plataforma),
    FOREIGN KEY (id_produto_caracteristica) REFERENCES ProdutoCaracteristica(id_produto_caracteristica),
    FOREIGN KEY (id_caracteristica) REFERENCES Caracteristica(id_caracteristica),
    FOREIGN KEY (id_tipo_caracteristica) REFERENCES TipoCaracteristica(id_tipo_caracteristica),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE ConfiguracaoAlertasQTD (
    id_configuracao_alertas_qtd INT PRIMARY KEY AUTO_INCREMENT,
    quantidade_amarelo INT,
    quantidade_vermelha INT,
    quantidade_violeta INT
);

-- Trigger para entrada de produto no estoque
DELIMITER $$

CREATE TRIGGER trg_compra_produto_after_insert
AFTER INSERT ON CompraProduto
FOR EACH ROW
BEGIN
    -- Atualiza quantidade geral do produto
    UPDATE Produto
    SET quantidade_produto = quantidade_produto + NEW.quantidade_produto
    WHERE id_produto = NEW.id_produto;

DELIMITER ;

-- Trigger para saída de produto no estoque
DELIMITER $$

CREATE TRIGGER trg_saida_produto_after_insert
AFTER INSERT ON ItensSaida
FOR EACH ROW
BEGIN
    -- Atualiza quantidade geral do produto
    UPDATE Produto
    SET quantidade_produto = quantidade_produto - NEW.quantidade
    WHERE id_produto = NEW.id_produto;

    -- Atualiza quantidade por característica
    UPDATE ProdutoCaracteristica
    SET quantidade_produto_caracteristica = quantidade_produto_caracteristica - NEW.quantidade
    WHERE id_produto_caracteristica = NEW.id_produto_caracteristica;
    
    -- Atualiza quantidade por característica por plataforma
    UPDATE PlataformaProduto
    SET quantidade_produto_plataforma = quantidade_produto_plataforma - NEW.quantidade
    WHERE id_produto_caracteristica = NEW.id_produto_caracteristica
    AND id_plataforma = NEW.id_plataforma;
END $$

DELIMITER ;
