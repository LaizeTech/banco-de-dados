CREATE DATABASE LaizeTech;
USE LaizeTech;

CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nomeCategoria VARCHAR(45)
);

CREATE TABLE TipoCaracteristica (
    idTipoCaracteristica INT PRIMARY KEY AUTO_INCREMENT,
    nomeTipoCaracteristica VARCHAR(45)
);

CREATE TABLE Caracteristica (
    idCaracteristica INT PRIMARY KEY AUTO_INCREMENT,
    idTipoCaracteristica INT,
    nomeCaracteristica VARCHAR(45),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    idCategoria INT,
    nomeProduto VARCHAR(45),
    dtRegistro DATE DEFAULT CURRENT_TIMESTAMP,
    quantidadeProduto INT,
    statusAtivo TINYINT,
    caminhoImagem VARCHAR(45),
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

CREATE TABLE ProdutoCaracteristica (
    idProdutoCaracteristica INT PRIMARY KEY AUTO_INCREMENT,
    idCaracteristica INT,
    idTipoCaracteristica INT,
    idProduto INT,
    quantidadeProdutoCaracteristica INT,
    FOREIGN KEY (idCaracteristica) REFERENCES Caracteristica(idCaracteristica),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE CompraProduto (
    idCompraProduto INT PRIMARY KEY AUTO_INCREMENT,
    fornecedor VARCHAR(50),
    precoCompra DECIMAL(10,2),
    dtCompra DATE DEFAULT CURRENT_TIMESTAMP,
    quantidadeProduto INT,
    idProduto INT,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(45),
    CNPJ CHAR(14)
);

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    acessoFinanceiro TINYINT,
    statusAtivo TINYINT NOT NULL,
    idEmpresa INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Plataforma (
    idPlataforma INT PRIMARY KEY AUTO_INCREMENT,
    idEmpresa INT,
    nomePlataforma VARCHAR(45),
    status TINYINT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE PlataformaProduto (
    idPlataformaProduto INT PRIMARY KEY AUTO_INCREMENT,
    idPlataforma INT,
    idProdutoCaracteristica INT,
    idCaracteristica INT,
    idTipoCaracteristica INT,
    idProduto INT,
    quantidadeProdutoPlataforma INT,
    FOREIGN KEY (idPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (idProdutoCaracteristica) REFERENCES ProdutoCaracteristica(idProdutoCaracteristica),
    FOREIGN KEY (idCaracteristica) REFERENCES Caracteristica(idCaracteristica),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE TipoSaida (
    idTipoSaida INT PRIMARY KEY AUTO_INCREMENT,
    nomeTipo VARCHAR(45)
);

CREATE TABLE StatusVenda (
    idStatusVenda INT PRIMARY KEY AUTO_INCREMENT,
    nomeStatus ENUM('PENDENTE', 'FINALIZADA', 'CANCELADA')
);

CREATE TABLE Saida (
    idSaida INT PRIMARY KEY AUTO_INCREMENT,
    idEmpresa INT,
    idPlataforma INT,
    idTipoSaida INT,
    numeroPedido VARCHAR(45),
    dtVenda DATE DEFAULT CURRENT_TIMESTAMP,
    precoVenda DECIMAL(10,2),
    totalDesconto DECIMAL(10,2),
    idStatusVenda INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa),
    FOREIGN KEY (idPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (idStatusVenda) REFERENCES StatusVenda(idStatusVenda),
    FOREIGN KEY (idTipoSaida) REFERENCES TipoSaida(idTipoSaida)
);

CREATE TABLE ItensSaida (
    idItem INT PRIMARY KEY AUTO_INCREMENT,
    idSaida INT,
    idPlataforma INT,
    quantidade INT,
    idProdutoCaracteristica INT,
    idCaracteristica INT,
    idTipoCaracteristica INT,
    idProduto INT,
    FOREIGN KEY (idSaida) REFERENCES Saida(idSaida),
    FOREIGN KEY (idPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (idProdutoCaracteristica) REFERENCES ProdutoCaracteristica(idProdutoCaracteristica),
    FOREIGN KEY (idCaracteristica) REFERENCES Caracteristica(idCaracteristica),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE ConfiguracaoAlertasQTD (
    idConfiguracaoAlertasQTD INT PRIMARY KEY AUTO_INCREMENT,
    quantidadeAmarelo INT,
    quantidadeVermelha INT,
    quantidadeVioleta INT
);

-- Trigger para entrada de produto no estoque
DELIMITER $$

CREATE TRIGGER trg_compra_produto_after_insert
AFTER INSERT ON CompraProduto
FOR EACH ROW
BEGIN
    -- Atualiza quantidade geral do produto
    UPDATE Produto
    SET quantidadeProduto = quantidadeProduto + NEW.quantidadeProduto
    WHERE idProduto = NEW.idProduto;

DELIMITER ;

-- Trigger para saída de produto no estoque
DELIMITER $$

CREATE TRIGGER trg_saida_produto_after_insert
AFTER INSERT ON ItensSaida
FOR EACH ROW
BEGIN
    -- Atualiza quantidade geral do produto
    UPDATE Produto
    SET quantidadeProduto = quantidadeProduto - NEW.quantidade
    WHERE idProduto = NEW.idProduto;

    -- Atualiza quantidade por característica
    UPDATE ProdutoCaracteristica
    SET quantidadeProdutoCaracteristica = quantidadeProdutoCaracteristica - NEW.quantidade
    WHERE idProdutoCaracteristica = NEW.idProdutoCaracteristica;
    
    -- Atualiza quantidade por característica por plataforma
    UPDATE PlataformaProduto
    SET quantidadeProdutoCaracteristica = quantidadeProdutoCaracteristica - NEW.quantidade
    WHERE idProdutoCaracteristica = NEW.idProdutoCaracteristica
    AND fkPlataforma = NEW.fkPlataforma;
END $$

DELIMITER ;
