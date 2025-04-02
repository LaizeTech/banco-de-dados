CREATE DATABASE LaizeTech;
USE LaizeTech;

-- DROP DATABASE LaizeTech;

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(45) NOT NULL,
    CNPJ CHAR(14) UNIQUE NOT NULL
);

INSERT INTO Empresa VALUES
(DEFAULT, "LaizeCosméticos", "57214940000109");

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) UNIQUE NOT NULL,
    senha VARCHAR(45) NOT NULL,
    acessoFinanceiro TINYINT NOT NULL,
    fkEmpresa INT NOT NULL,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Plataforma (
    idPlataforma INT PRIMARY KEY AUTO_INCREMENT,
    fkEmpresa INT NOT NULL,
    nomePlataforma VARCHAR(50) NOT NULL,
    statusPlataforma TINYINT NOT NULL,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nomeCategoria VARCHAR(45) NOT NULL
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    fkCategoria INT NOT NULL,
    nomeProduto VARCHAR(45) NOT NULL,
    precoCompra DECIMAL(10,2) NOT NULL,
    dtCompra DATE NOT NULL,
    FOREIGN KEY (fkCategoria) REFERENCES Categoria(idCategoria),
    quantidadeProduto INT NOT NULL,
    CONSTRAINT chk_totalProduto_nao_negativo CHECK (quantidadeProduto >= 0)
);

CREATE TABLE PlataformaProduto (
    idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    fkProduto INT NOT NULL,
    fkPlataforma INT NOT NULL,
    fkEmpresa INT NOT NULL,
    quantidadeProduto INT NOT NULL,
    CONSTRAINT chk_estoque_nao_negativo CHECK (quantidadeProduto >= 0),
    FOREIGN KEY (fkProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (fkPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Vendas (
    idVendas INT PRIMARY KEY AUTO_INCREMENT,
    fkEmpresa INT NOT NULL,
    fkPlataforma INT NOT NULL,
    dtVenda DATE NOT NULL,
    precoVenda DECIMAL(10,2) NOT NULL,
    totalTaxa DECIMAL(10,2) NOT NULL,
    totalDesconto DECIMAL(10,2) NOT NULL,
    statusVenda ENUM('PENDENTE', 'CONCLUIDA', 'CANCELADA') NOT NULL,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa),
    FOREIGN KEY (fkPlataforma) REFERENCES Plataforma(idPlataforma)
);

CREATE TABLE ItensVenda (
    idItem INT PRIMARY KEY AUTO_INCREMENT,
    fkProduto INT NOT NULL,
    fkVenda INT NOT NULL,
    fkEmpresa INT NOT NULL,
    fkPlataforma INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    precoUnitario DECIMAL(10,2) NOT NULL,
    subTotal DECIMAL(10,2) GENERATED ALWAYS AS (quantidade * precoUnitario) STORED,
    FOREIGN KEY (fkProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (fkVenda) REFERENCES Vendas(idVendas),
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa),
    FOREIGN KEY (fkPlataforma) REFERENCES Plataforma(idPlataforma)
);

DELIMITER //  
CREATE TRIGGER atualizar_estoque_venda
AFTER INSERT ON ItensVenda
FOR EACH ROW
BEGIN
    UPDATE PlataformaProduto
    SET quantidadeProduto = quantidadeProduto - NEW.quantidadeProduto
    WHERE fkProduto = NEW.fkProduto
    AND fkPlataforma = NEW.fkPlataforma;
END
DELIMITER ;

DELIMITER //
CREATE TRIGGER inserir_plataforma_produto
AFTER INSERT ON Produto
FOR EACH ROW
BEGIN
    INSERT INTO PlataformaProduto (fkProduto, fkPlataforma, fkEmpresa, quantidadeProduto)
    SELECT NEW.idProduto, Plataforma.idPlataforma, Plataforma.fkEmpresa, 0
    FROM Plataforma
    WHERE EXISTS (SELECT 1 FROM Plataforma);
END //
DELIMITER ;

DELIMITER //

CREATE TRIGGER validar_estoque_maximo
BEFORE INSERT ON PlataformaProduto
FOR EACH ROW
BEGIN
    DECLARE quantidade_produto INT;
    
    -- Obtém a quantidade total disponível no Produto
    SELECT quantidadeProduto INTO quantidade_produto
    FROM Produto
    WHERE idProduto = NEW.fkProduto;
    
    -- Verifica se a nova quantidade excede o permitido
    IF NEW.quantidadeProduto > quantidade_produto THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: A quantidade em uma plataforma excedeu a quantidade total dos produtos.';
    END IF;
END//

DELIMITER ;
