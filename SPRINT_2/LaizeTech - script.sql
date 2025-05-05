CREATE DATABASE LaizeTech;
USE LaizeTech;

-- DROP DATABASE LaizeTech;

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(45) NOT NULL,
    CNPJ CHAR(14) UNIQUE NOT NULL
);

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

CREATE TABLE StatusVenda(
idStatusVenda INT PRIMARY KEY AUTO_INCREMENT,
nomeStatus ENUM("PENDENTE", "CONCLUIDA", "CANCELADO")
);

CREATE TABLE ParametroProduto(
idParametroProduto INT PRIMARY KEY AUTO_INCREMENT,
nomeParametro VARCHAR(45)
);

CREATE TABLE ValorParametro(
idValorParametro INT PRIMARY KEY AUTO_INCREMENT,
nomeParametro VARCHAR(45),
fkParametroProduto INT NOT NULL,
FOREIGN KEY (fkParametroProduto) REFERENCES ParametroProduto(idParametroProduto)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    fkCategoria INT NOT NULL,
    fkValorParametro INT NOT NULL,
    nomeProduto VARCHAR(45) NOT NULL,
    precoCompra DECIMAL(10,2) NOT NULL,
    dtRegistro DATE NOT NULL,
    FOREIGN KEY (fkCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (fkValorParametro) REFERENCES ValorParametro(idValorParametro),
    quantidadeProduto INT NOT NULL,
    CONSTRAINT chk_totalProduto_nao_negativo CHECK (quantidadeProduto >= 0),
    statusAtivo TINYINT
);

CREATE TABLE CompraProduto (
    idCompraProduto INT PRIMARY KEY AUTO_INCREMENT,
    fkProduto INT NOT NULL,
    fornecedor VARCHAR(45) NOT NULL,
    precoCompra DECIMAL(10,2) NOT NULL,
    dtCompra DATE NOT NULL,
    FOREIGN KEY (fkProduto) REFERENCES Produto(idProduto),
    quantidadeProduto INT NOT NULL,
    CONSTRAINT chk_compraProduto_nao_negativo CHECK (quantidadeProduto >= 0)
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

CREATE TABLE TipoSaida (
idTipoSaida INT PRIMARY KEY AUTO_INCREMENT,
NomeTipo VARCHAR(45) NOT NULL
);


CREATE TABLE Saida (
    idSaida INT PRIMARY KEY AUTO_INCREMENT,
    fkEmpresa INT NOT NULL,
    fkPlataforma INT NOT NULL,
    fkTipoSaida INT NOT NULL,
    fkStatusVenda INT NOT NULL,
    dtVenda DATE NOT NULL,
    precoVenda DECIMAL(10,2) NOT NULL,
    totalTaxa DECIMAL(10,2) NOT NULL,
    totalDesconto DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa),
    FOREIGN KEY (fkPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (fkTipoSaida) REFERENCES TipoSaida(idTipoSaida),
    FOREIGN KEY (fkStatusVenda) REFERENCES StatusVenda(idStatusVenda)
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

-- Responsável por atualizar a tabela PlataformaProduto ao inserir um item vendido
DELIMITER //  
CREATE TRIGGER atualizar_estoque_venda
AFTER INSERT ON ItensVenda
FOR EACH ROW
BEGIN
    UPDATE PlataformaProduto
    SET quantidadeProduto = quantidadeProduto - NEW.quantidade
    WHERE fkProduto = NEW.fkProduto
    AND fkPlataforma = NEW.fkPlataforma;
END
//
DELIMITER ;

-- Esse trigger é similar ao de cima, mas é para atualizar a quantidade total do produto na tabela Produto
DELIMITER //

CREATE TRIGGER atualizar_quantidade_total_produto
AFTER INSERT ON ItensVenda
FOR EACH ROW
BEGIN
    UPDATE Produto
    SET quantidadeProduto = quantidadeProduto - NEW.quantidade
    WHERE idProduto = NEW.fkProduto;
END //

DELIMITER ;

-- Serve para inserir na PlataformaProduto (com todas as plataformas) assim que um produto é cadastrado na tabela Produto
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


-- Meio que uma constraint para que a quantidade em PlataformaProduto não seja maior que a quantidade em Produto (que é a quantidade total)
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

INSERT INTO Empresa VALUES
(DEFAULT, "LaizeCosméticos", "57214940000109");