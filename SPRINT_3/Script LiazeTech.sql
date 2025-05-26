CREATE DATABASE LaizeTech;
USE LaizeTech;

CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY,
    nomeCategoria VARCHAR(45)
);

CREATE TABLE TipoCaracteristica (
    idTipoCaracteristica INT PRIMARY KEY,
    nomeTipoCaracteristica VARCHAR(45)
);

CREATE TABLE Caracteristica (
    idCaracteristica INT PRIMARY KEY,
    idTipoCaracteristica INT,
    nomeCaracteristica VARCHAR(45),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    idCategoria INT,
    nomeProduto VARCHAR(45),
    dtRegistro DATE,
    quantidadeProduto INT,
    statusAtivo TINYINT,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

CREATE TABLE ProdutoCaracteristica (
    idProdutoCaracteristica INT PRIMARY KEY,
    idCaracteristica INT,
    idTipoCaracteristica INT,
    idProduto INT,
    quantidadeProdutoCaracteristica INT,
    FOREIGN KEY (idCaracteristica) REFERENCES Caracteristica(idCaracteristica),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE CompraProduto (
    idCompraProduto INT PRIMARY KEY,
    fornecedor VARCHAR(50),
    precoCompra DECIMAL(10,2),
    dtCompra DATE,
    quantidadeProduto INT,
    idProduto INT,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY,
    nomeEmpresa VARCHAR(45),
    CNPJ CHAR(14)
);

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    acessoFinanceiro TINYINT,
    idEmpresa INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Plataforma (
    idPlataforma INT PRIMARY KEY,
    idEmpresa INT,
    nomePlataforma VARCHAR(45),
    status TINYINT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE PlataformaProduto (
    idPlataformaProduto INT PRIMARY KEY,
    idPlataforma INT,
    idProdutoCaracteristica INT,
    idCaracteristica INT,
    idTipoCaracteristica INT,
    idProduto INT,
    FOREIGN KEY (idPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (idProdutoCaracteristica) REFERENCES ProdutoCaracteristica(idProdutoCaracteristica),
    FOREIGN KEY (idCaracteristica) REFERENCES Caracteristica(idCaracteristica),
    FOREIGN KEY (idTipoCaracteristica) REFERENCES TipoCaracteristica(idTipoCaracteristica),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE TipoSaida (
    idTipoSaida INT PRIMARY KEY,
    nomeTipo VARCHAR(45)
);

CREATE TABLE StatusVenda (
    idStatusVenda INT PRIMARY KEY,
    nomeStatus ENUM('PENDENTE', 'FINALIZADA', 'CANCELADA')
);

CREATE TABLE Saida (
    idSaida INT PRIMARY KEY,
    idEmpresa INT,
    idPlataforma INT,
    dtVenda DATE,
    precoVenda DECIMAL(10,2),
    taxaVenda DECIMAL(10,2),
    totalDesconto DECIMAL(10,2),
    idStatusVenda INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa),
    FOREIGN KEY (idPlataforma) REFERENCES Plataforma(idPlataforma),
    FOREIGN KEY (idStatusVenda) REFERENCES StatusVenda(idStatusVenda)
);

CREATE TABLE ItensSaida (
    idItem INT PRIMARY KEY,
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
