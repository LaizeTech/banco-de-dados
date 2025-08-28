use laize_tech;

INSERT INTO Empresa (idEmpresa, nomeEmpresa, CNPJ) VALUES (1, 'Laize Cosméticos', '12345678901234');

INSERT INTO Usuario (nome, email, senha, acessoFinanceiro, idEmpresa, statusAtivo) VALUES
('LaizeAdmin', 'laize.admin@laize.com', 'senha123456', 1, 1, 1);

INSERT INTO Plataforma (idEmpresa, nomePlataforma, status) VALUES
(1, 'Shopee', 1),
(1, 'Nuvemshop', 1),
(1, 'Loja Física', 1);

INSERT INTO ConfiguracaoAlertasQTD VALUES
(DEFAULT, 5, 3, 0);

INSERT INTO TipoSaida VALUES
(DEFAULT, 'Venda'),
(DEFAULT, 'Devolução'),
(DEFAULT, 'Troca'),
(DEFAULT, 'Furto');

INSERT INTO StatusVenda VALUES
(DEFAULT, 'FINALIZADA'),
(DEFAULT, 'PENDENTE'),
(DEFAULT, 'CANCELADA');

INSERT INTO TipoCaracteristica (idTipoCaracteristica, nomeTipoCaracteristica) VALUES
(1, 'Cor'),
(2, 'Sabor'),
(3, 'Material'),
(4, 'sem caracteristica');

INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Rosa');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Lilás');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'Brigadeiro');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'Choco melo');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (3, 'RK40');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (3, 'Personalizado');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Rosa Pastel');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'Pão de mel');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Lilás frase cuide-se');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'cor 1');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Firefly');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Cor 4');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'Au lait( marrom claro)');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Cor 2');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'Flan (Vermelho)');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'Melancia');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Rosa claro');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Sunset Sienna');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Azul');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Vermelho');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (3, 'sérum clareador');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (2, 'morango');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (4, 'sem caracteristica');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, '50 Pçs,Rosa');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, '20 Pçs,Rosa');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, '50 Pçs,Lilás');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, '10 Pçs,Rosa');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'COR 03');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'COR 02');
INSERT INTO Caracteristica (idTipoCaracteristica, nomeCaracteristica) VALUES (1, 'Cor 1');


INSERT INTO Categoria (idCategoria, nomeCategoria) VALUES
(1, 'Maquiagem'),
(2, 'Skincare');

INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (1, 1, 'Esponja de maquiagem Mini star', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (2, 2, 'Brinde para Loja | Máscara facial para skincare', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (3, 1, 'batom de cacau personalizado 50 unidades', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (4, 1, 'batom de cacau 15 unidades', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (5, 1, 'Duo Lips Choco Fun Fenzza', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (6, 1, 'Brow Rise Gel para sobrancelhas RubyRose', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (7, 2, 'Máscara facial para Brindes | kit empreendedora', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (8, 1, 'Gloss Labial Radiant Kiss RubyRose', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (9, 1, 'Batom de cacau para brindes | Empreendedoras', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (10, 1, 'batom de cacau 20 UNI', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (11, 1, 'Blidagem Dapop', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (12, 1, 'Delineador a prova d’água Playboy', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (13, 1, 'Gloss Maça Max love', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (14, 2, 'Bronzer cremoso stick Sunkiss RubyRose', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (15, 2, 'Lapis labial draw mouth jasmyne', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (16, 2, 'Brindes para clientes | xuxinhas para empreendedoras', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (17, 1, 'Espelho Redondo 2 Faces de Mesa=', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (18, 1, 'Brindes de batom de cacau personalizado 80UNI', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (19, 1, 'CORRETIVO DE ALTA COBERTURA SMOOTH FEELING', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (20, 1, 'Pó Rosa Mosqueta Fenzza', NULL, 15, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (21, 1, 'Lip Gloss Glitter - Ruby Rose', NULL, 15, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (22, 2, 'Glossy Lips Obsidian-Ruby Rose Moonstone', NULL, 15, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (23, 2, 'Blush Jelly SP Colors', NULL, 15, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (24, 2, 'TINT CREAM CHOCO FUN', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (25, 1, 'Caneta Delineadora Eyeliner Marker Pink 21', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (26, 1, 'Lápis de Contorno Labial Jasmyne', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (27, 1, 'LIP GLOSS LADY BEAUTY RED GLOW', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (28, 1, 'Blindagem dapop', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (29, 1, 'Rímel I Love Volumão Luisance', NULL, 50, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (30, 2, 'Blush trio My life', NULL, 5, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (31, 2, 'Sérum melancia e kiwi Melu', NULL, 5, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (32, 2, 'Iluminador e contorno Amazing Bobbi Rara', NULL, 5, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (33, 1, 'Gel Modelador para Sobrancelhas Melu', NULL, 5, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (34, 1, 'Pó Facial Translucido Solto Cor 3- Playboy 16g', NULL, 5, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (35, 1, 'Esfoliante Labotrat Morango e Melancia', NULL, 3, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (36, 2, 'Gloss Maxlove Lip volumoso cor 08', NULL, 3, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (37, 2, 'Kit de mini pincéis', NULL, 3, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (38, 2, 'Esfoliante Corporal Rosa Mosqueta 250g - Porán', NULL, 0, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (39, 1, 'Brilho labial pola aylr', NULL, 0, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (40, 1, 'Gloss Labial com chaveirinho', NULL, 0, 1, NULL);
INSERT INTO Produto (idProduto, idCategoria, nomeProduto, dtRegistro, quantidadeProduto, statusAtivo, caminhoImagem) VALUES (41, 1, 'Sérum clareador e ÓLEO FACIAL DE CAMOMILA E CALÊNDULA', NULL, 50, 1, NULL);

-- ===========================
-- INSERTS PARA PRODUTOCARACTERISTICA
-- Relacionando produtos às suas características baseado nos arquivos CSV
-- ===========================

-- Produtos SEM características específicas recebem 'sem caracteristica' (id 23)
-- Esponja de maquiagem Mini star
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 1, 0);

-- Brinde para Loja | Máscara facial para skincare - múltiplas características
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (24, 1, 2, 0); -- 50 Pçs,Rosa
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (25, 1, 2, 0); -- 20 Pçs,Rosa
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (26, 1, 2, 0); -- 50 Pçs,Lilás
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (27, 1, 2, 0); -- 10 Pçs,Rosa

-- batom de cacau personalizado 50 unidades
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 3, 0);

-- batom de cacau 15 unidades
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (2, 1, 4, 0); -- Lilás
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (7, 1, 4, 0); -- Rosa Pastel

-- Duo Lips Choco Fun Fenzza
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (3, 2, 5, 0); -- Brigadeiro
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (4, 2, 5, 0); -- Choco melo
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (8, 2, 5, 0); -- Pão de mel

-- Brow Rise Gel para sobrancelhas RubyRose
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 6, 0);

-- Máscara facial para Brindes | kit empreendedora
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (2, 1, 7, 0); -- Lilás
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (1, 1, 7, 0); -- Rosa

-- Gloss Labial Radiant Kiss RubyRose
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (5, 3, 8, 0); -- RK40

-- Batom de cacau para brindes | Empreendedoras
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (1, 1, 9, 0); -- Rosa
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (6, 3, 9, 0); -- Personalizado
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (2, 1, 9, 0); -- Lilás

-- batom de cacau 20 UNI
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (9, 1, 10, 0); -- Lilás frase cuide-se
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (6, 3, 10, 0); -- Personalizado

-- Blidagem Dapop
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 11, 0);

-- Delineador a prova d'água Playboy
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 12, 0);

-- Gloss Maça Max love
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 13, 0);

-- Bronzer cremoso stick Sunkiss RubyRose
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (18, 1, 14, 0); -- Sunset Sienna

-- Lapis labial draw mouth jasmyne
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (10, 1, 15, 0); -- cor 1

-- Brindes para clientes | xuxinhas para empreendedoras
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (1, 1, 16, 0); -- Rosa

-- Espelho Redondo 2 Faces de Mesa=
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 17, 0);

-- Brindes de batom de cacau personalizado 80UNI
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 18, 0);

-- CORRETIVO DE ALTA COBERTURA SMOOTH FEELING
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (28, 1, 19, 0); -- COR 03
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (29, 1, 19, 0); -- COR 02

-- Pó Rosa Mosqueta Fenzza
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 20, 0);

-- Lip Gloss Glitter - Ruby Rose
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (11, 1, 21, 0); -- Firefly

-- Glossy Lips Obsidian-Ruby Rose Moonstone
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 22, 0);

-- Blush Jelly SP Colors
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (12, 1, 23, 0); -- Cor 4
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (30, 1, 23, 0); -- Cor 1

-- TINT CREAM CHOCO FUN
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (13, 2, 24, 0); -- Au lait( marrom claro)
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (15, 2, 24, 0); -- Flan (Vermelho)

-- Caneta Delineadora Eyeliner Marker Pink 21
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 25, 0);

-- Lápis de Contorno Labial Jasmyne
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (14, 1, 26, 0); -- Cor 2

-- LIP GLOSS LADY BEAUTY RED GLOW
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 27, 0);

-- Blindagem dapop
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 28, 0);

-- Rímel I Love Volumão Luisance
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 29, 0);

-- Blush trio My life
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (17, 1, 30, 0); -- Rosa claro

-- Sérum melancia e kiwi Melu
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (16, 2, 31, 0); -- Melancia

-- Iluminador e contorno Amazing Bobbi Rara
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 32, 0);

-- Gel Modelador para Sobrancelhas Melu
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 33, 0);

-- Pó Facial Translucido Solto Cor 3- Playboy 16g
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 34, 0);

-- Esfoliante Labotrat Morango e Melancia
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (22, 2, 35, 0); -- morango

-- Gloss Maxlove Lip volumoso cor 08
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 36, 0);

-- Kit de mini pincéis
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 37, 0);

-- Esfoliante Corporal Rosa Mosqueta 250g - Porán
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (23, 4, 38, 0);

-- Brilho labial pola aylr
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (20, 1, 39, 0); -- Vermelho

-- Gloss Labial com chaveirinho
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (19, 1, 40, 0); -- Azul

-- Sérum clareador e ÓLEO FACIAL DE CAMOMILA E CALÊNDULA
INSERT INTO ProdutoCaracteristica (idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoCaracteristica) VALUES (21, 3, 41, 0); -- sérum clareador

-- ===========================
-- INSERTS PARA PLATAFORMAPRODUTO
-- Relacionando todos os ProdutoCaracteristica com todas as plataformas
-- ===========================

-- Para cada ProdutoCaracteristica, criar relacionamento com todas as 3 plataformas (Shopee=1, Nuvemshop=2, Loja Física=3)

-- ProdutoCaracteristica ID 1: Esponja de maquiagem Mini star (sem característica)
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 1, 23, 4, 1, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 1, 23, 4, 1, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 1, 23, 4, 1, 0);

-- ProdutoCaracteristica ID 2-5: Brinde para Loja | Máscara facial para skincare (múltiplas características)
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 2, 24, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 2, 24, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 2, 24, 1, 2, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 3, 25, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 3, 25, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 3, 25, 1, 2, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 4, 26, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 4, 26, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 4, 26, 1, 2, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 5, 27, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 5, 27, 1, 2, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 5, 27, 1, 2, 0);

-- ProdutoCaracteristica ID 6: batom de cacau personalizado 50 unidades
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 6, 23, 4, 3, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 6, 23, 4, 3, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 6, 23, 4, 3, 0);

-- ProdutoCaracteristica ID 7-8: batom de cacau 15 unidades
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 7, 2, 1, 4, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 7, 2, 1, 4, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 7, 2, 1, 4, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 8, 7, 1, 4, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 8, 7, 1, 4, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 8, 7, 1, 4, 0);

-- ProdutoCaracteristica ID 9-11: Duo Lips Choco Fun Fenzza
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 9, 3, 2, 5, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 9, 3, 2, 5, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 9, 3, 2, 5, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 10, 4, 2, 5, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 10, 4, 2, 5, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 10, 4, 2, 5, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 11, 8, 2, 5, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 11, 8, 2, 5, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 11, 8, 2, 5, 0);

-- ProdutoCaracteristica ID 12: Brow Rise Gel para sobrancelhas RubyRose
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 12, 23, 4, 6, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 12, 23, 4, 6, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 12, 23, 4, 6, 0);

-- ProdutoCaracteristica ID 13-14: Máscara facial para Brindes | kit empreendedora
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 13, 2, 1, 7, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 13, 2, 1, 7, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 13, 2, 1, 7, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 14, 1, 1, 7, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 14, 1, 1, 7, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 14, 1, 1, 7, 0);

-- ProdutoCaracteristica ID 15: Gloss Labial Radiant Kiss RubyRose
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 15, 5, 3, 8, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 15, 5, 3, 8, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 15, 5, 3, 8, 0);

-- ProdutoCaracteristica ID 16-18: Batom de cacau para brindes | Empreendedoras
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 16, 1, 1, 9, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 16, 1, 1, 9, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 16, 1, 1, 9, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 17, 6, 3, 9, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 17, 6, 3, 9, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 17, 6, 3, 9, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 18, 2, 1, 9, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 18, 2, 1, 9, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 18, 2, 1, 9, 0);

-- ProdutoCaracteristica ID 19-20: batom de cacau 20 UNI
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 19, 9, 1, 10, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 19, 9, 1, 10, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 19, 9, 1, 10, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 20, 6, 3, 10, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 20, 6, 3, 10, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 20, 6, 3, 10, 0);

-- Continuando com os demais produtos...
-- ProdutoCaracteristica ID 21: Blidagem Dapop
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 21, 23, 4, 11, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 21, 23, 4, 11, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 21, 23, 4, 11, 0);

-- ProdutoCaracteristica ID 22: Delineador a prova d'água Playboy
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 22, 23, 4, 12, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 22, 23, 4, 12, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 22, 23, 4, 12, 0);

-- ProdutoCaracteristica ID 23: Gloss Maça Max love
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 23, 23, 4, 13, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 23, 23, 4, 13, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 23, 23, 4, 13, 0);

-- ProdutoCaracteristica ID 24: Bronzer cremoso stick Sunkiss RubyRose
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 24, 18, 1, 14, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 24, 18, 1, 14, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 24, 18, 1, 14, 0);

-- ProdutoCaracteristica ID 25: Lapis labial draw mouth jasmyne
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 25, 10, 1, 15, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 25, 10, 1, 15, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 25, 10, 1, 15, 0);

-- ProdutoCaracteristica ID 26: Brindes para clientes | xuxinhas para empreendedoras
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 26, 1, 1, 16, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 26, 1, 1, 16, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 26, 1, 1, 16, 0);

-- ProdutoCaracteristica ID 27: Espelho Redondo 2 Faces de Mesa=
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 27, 23, 4, 17, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 27, 23, 4, 17, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 27, 23, 4, 17, 0);

-- ProdutoCaracteristica ID 28: Brindes de batom de cacau personalizado 80UNI
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 28, 23, 4, 18, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 28, 23, 4, 18, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 28, 23, 4, 18, 0);

-- ProdutoCaracteristica ID 29-30: CORRETIVO DE ALTA COBERTURA SMOOTH FEELING
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 29, 28, 1, 19, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 29, 28, 1, 19, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 29, 28, 1, 19, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 30, 29, 1, 19, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 30, 29, 1, 19, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 30, 29, 1, 19, 0);

-- ProdutoCaracteristica ID 31: Pó Rosa Mosqueta Fenzza
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 31, 23, 4, 20, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 31, 23, 4, 20, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 31, 23, 4, 20, 0);

-- ProdutoCaracteristica ID 32: Lip Gloss Glitter - Ruby Rose
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 32, 11, 1, 21, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 32, 11, 1, 21, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 32, 11, 1, 21, 0);

-- ProdutoCaracteristica ID 33: Glossy Lips Obsidian-Ruby Rose Moonstone
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 33, 23, 4, 22, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 33, 23, 4, 22, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 33, 23, 4, 22, 0);

-- ProdutoCaracteristica ID 34-35: Blush Jelly SP Colors
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 34, 12, 1, 23, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 34, 12, 1, 23, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 34, 12, 1, 23, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 35, 30, 1, 23, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 35, 30, 1, 23, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 35, 30, 1, 23, 0);

-- ProdutoCaracteristica ID 36-37: TINT CREAM CHOCO FUN
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 36, 13, 2, 24, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 36, 13, 2, 24, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 36, 13, 2, 24, 0);

INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 37, 15, 2, 24, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 37, 15, 2, 24, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 37, 15, 2, 24, 0);

-- ProdutoCaracteristica ID 38: Caneta Delineadora Eyeliner Marker Pink 21
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 38, 23, 4, 25, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 38, 23, 4, 25, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 38, 23, 4, 25, 0);

-- ProdutoCaracteristica ID 39: Lápis de Contorno Labial Jasmyne
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 39, 14, 1, 26, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 39, 14, 1, 26, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 39, 14, 1, 26, 0);

-- ProdutoCaracteristica ID 40: LIP GLOSS LADY BEAUTY RED GLOW
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 40, 23, 4, 27, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 40, 23, 4, 27, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 40, 23, 4, 27, 0);

-- ProdutoCaracteristica ID 41: Blindagem dapop
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 41, 23, 4, 28, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 41, 23, 4, 28, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 41, 23, 4, 28, 0);

-- ProdutoCaracteristica ID 42: Rímel I Love Volumão Luisance
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 42, 23, 4, 29, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 42, 23, 4, 29, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 42, 23, 4, 29, 0);

-- ProdutoCaracteristica ID 43: Blush trio My life
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 43, 17, 1, 30, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 43, 17, 1, 30, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 43, 17, 1, 30, 0);

-- ProdutoCaracteristica ID 44: Sérum melancia e kiwi Melu
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 44, 16, 2, 31, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 44, 16, 2, 31, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 44, 16, 2, 31, 0);

-- ProdutoCaracteristica ID 45: Iluminador e contorno Amazing Bobbi Rara
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 45, 23, 4, 32, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 45, 23, 4, 32, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 45, 23, 4, 32, 0);

-- ProdutoCaracteristica ID 46: Gel Modelador para Sobrancelhas Melu
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 46, 23, 4, 33, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 46, 23, 4, 33, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 46, 23, 4, 33, 0);

-- ProdutoCaracteristica ID 47: Pó Facial Translucido Solto Cor 3- Playboy 16g
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 47, 23, 4, 34, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 47, 23, 4, 34, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 47, 23, 4, 34, 0);

-- ProdutoCaracteristica ID 48: Esfoliante Labotrat Morango e Melancia
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 48, 22, 2, 35, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 48, 22, 2, 35, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 48, 22, 2, 35, 0);

-- ProdutoCaracteristica ID 49: Gloss Maxlove Lip volumoso cor 08
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 49, 23, 4, 36, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 49, 23, 4, 36, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 49, 23, 4, 36, 0);

-- ProdutoCaracteristica ID 50: Kit de mini pincéis
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 50, 23, 4, 37, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 50, 23, 4, 37, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 50, 23, 4, 37, 0);

-- ProdutoCaracteristica ID 51: Esfoliante Corporal Rosa Mosqueta 250g - Porán
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 51, 23, 4, 38, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 51, 23, 4, 38, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 51, 23, 4, 38, 0);

-- ProdutoCaracteristica ID 52: Brilho labial pola aylr
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 52, 20, 1, 39, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 52, 20, 1, 39, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 52, 20, 1, 39, 0);

-- ProdutoCaracteristica ID 53: Gloss Labial com chaveirinho
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 53, 19, 1, 40, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 53, 19, 1, 40, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 53, 19, 1, 40, 0);

-- ProdutoCaracteristica ID 54: Sérum clareador e ÓLEO FACIAL DE CAMOMILA E CALÊNDULA
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (1, 54, 21, 3, 41, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (2, 54, 21, 3, 41, 0);
INSERT INTO PlataformaProduto (idPlataforma, idProdutoCaracteristica, idCaracteristica, idTipoCaracteristica, idProduto, quantidadeProdutoPlataforma) VALUES (3, 54, 21, 3, 41, 0);
