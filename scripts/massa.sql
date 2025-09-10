use laize_tech;

INSERT INTO Empresa (id_empresa, nome_empresa, CNPJ) VALUES (1, 'Laize Cosméticos', '12345678901234');

INSERT INTO Usuario (nome, email, senha, acesso_financeiro, id_empresa, status_ativo) VALUES
('LaizeAdmin', 'laize.admin@laize.com', 'senha123456', 1, 1, 1);

INSERT INTO Plataforma (id_empresa, nome_plataforma, status) VALUES
(1, 'Shopee', 1),
(1, 'Nuvemshop', 1),
(1, 'Loja Física', 1);

INSERT INTO Configuracao_AlertasQTD VALUES
(DEFAULT, 5, 3, 0);

INSERT INTO Tipo_Saida VALUES
(DEFAULT, 'Venda'),
(DEFAULT, 'Devolução'),
(DEFAULT, 'Troca'),
(DEFAULT, 'Furto');

INSERT INTO Status_Venda VALUES
(DEFAULT, 'FINALIZADA'),
(DEFAULT, 'PENDENTE'),
(DEFAULT, 'CANCELADA');

INSERT INTO Tipo_Caracteristica (id_tipo_caracteristica, nome_tipo_caracteristica) VALUES
(1, 'Cor'),
(2, 'Sabor'),
(3, 'Material'),
(4, 'sem caracteristica');

INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Rosa');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Lilás');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'Brigadeiro');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'Choco melo');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (3, 'RK40');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (3, 'Personalizado');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Rosa Pastel');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'Pão de mel');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Lilás frase cuide-se');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'cor 1');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Firefly');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Cor 4');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'Au lait( marrom claro)');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Cor 2');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'Flan (Vermelho)');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'Melancia');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Rosa claro');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Sunset Sienna');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Azul');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'Vermelho');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (3, 'sérum clareador');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (2, 'morango');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (4, 'sem caracteristica');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, '50 Pçs,Rosa');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, '20 Pçs,Rosa');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, '50 Pçs,Lilás');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, '10 Pçs,Rosa');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'COR 03');
INSERT INTO Caracteristica (id_tipo_caracteristica, nome_caracteristica) VALUES (1, 'COR 02');

INSERT INTO Categoria (id_categoria, nome_categoria) VALUES
(1, 'Maquiagem'),
(2, 'Skincare');

INSERT INTO Produto (id_produto, id_categoria, nome_produto, dt_registro, quantidade_produto, status_ativo, caminho_imagem) VALUES 
(1, 1, 'Esponja de maquiagem Mini star', '2025-01-12', 50, 1, NULL),
(2, 2, 'Brinde para Loja | Máscara facial para skincare', '2025-01-23', 50, 1, NULL),
(3, 1, 'batom de cacau personalizado 50 unidades', '2025-02-05', 50, 1, NULL),
(4, 1, 'batom de cacau 15 unidades', '2025-02-19', 50, 1, NULL),
(5, 1, 'Duo Lips Choco Fun Fenzza', '2025-03-07', 50, 1, NULL),
(6, 1, 'Brow Rise Gel para sobrancelhas RubyRose', '2025-03-21', 50, 1, NULL),
(7, 2, 'Máscara facial para Brindes | kit empreendedora', '2025-04-02', 50, 1, NULL),
(8, 1, 'Gloss Labial Radiant Kiss RubyRose', '2025-04-16', 50, 1, NULL),
(9, 1, 'Batom de cacau para brindes | Empreendedoras', '2025-05-01', 50, 1, NULL),
(10, 1, 'batom de cacau 20 UNI', '2025-05-15', 50, 1, NULL),
(11, 1, 'Blidagem Dapop', '2025-05-27', 50, 1, NULL),
(12, 1, 'Delineador a prova d’água Playboy', '2025-06-03', 50, 1, NULL),
(13, 1, 'Gloss Maça Max love', '2025-06-18', 50, 1, NULL),
(14, 2, 'Bronzer cremoso stick Sunkiss RubyRose', '2025-07-01', 50, 1, NULL),
(15, 2, 'Lapis labial draw mouth jasmyne', '2025-07-14', 50, 1, NULL),
(16, 2, 'Brindes para clientes | xuxinhas para empreendedoras', '2025-07-29', 50, 1, NULL),
(17, 1, 'Espelho Redondo 2 Faces de Mesa=', '2025-08-05', 50, 1, NULL),
(18, 1, 'Brindes de batom de cacau personalizado 80UNI', '2025-08-19', 50, 1, NULL),
(19, 1, 'CORRETIVO DE ALTA COBERTURA SMOOTH FEELING', '2025-09-01', 50, 1, NULL),
(20, 1, 'Pó Rosa Mosqueta Fenzza', '2025-09-13', 15, 1, NULL),
(21, 1, 'Lip Gloss Glitter - Ruby Rose', '2025-09-27', 15, 1, NULL),
(22, 2, 'Glossy Lips Obsidian-Ruby Rose Moonstone', '2025-10-04', 15, 1, NULL),
(23, 2, 'Blush Jelly SP Colors', '2025-10-18', 15, 1, NULL),
(24, 2, 'TINT CREAM CHOCO FUN', '2025-11-02', 50, 1, NULL),
(25, 1, 'Caneta Delineadora Eyeliner Marker Pink 21', '2025-11-13', 50, 1, NULL),
(26, 1, 'Lápis de Contorno Labial Jasmyne', '2025-11-27', 50, 1, NULL),
(27, 1, 'LIP GLOSS LADY BEAUTY RED GLOW', '2025-12-04', 50, 1, NULL),
(28, 1, 'Blindagem dapop', '2025-12-15', 50, 1, NULL),
(29, 1, 'Rímel I Love Volumão Luisance', '2025-12-27', 50, 1, NULL),
(30, 2, 'Blush trio My life', '2025-01-08', 5, 1, NULL),
(31, 2, 'Sérum melancia e kiwi Melu', '2025-02-10', 5, 1, NULL),
(32, 2, 'Iluminador e contorno Amazing Bobbi Rara', '2025-03-15', 5, 1, NULL),
(33, 1, 'Gel Modelador para Sobrancelhas Melu', '2025-04-20', 5, 1, NULL),
(34, 1, 'Pó Facial Translucido Solto Cor 3- Playboy 16g', '2025-05-25', 5, 1, NULL),
(35, 1, 'Esfoliante Labotrat Morango e Melancia', '2025-06-30', 3, 1, NULL),
(36, 2, 'Gloss Maxlove Lip volumoso cor 08', '2025-07-05', 3, 1, NULL),
(37, 2, 'Kit de mini pincéis', '2025-08-10', 3, 1, NULL),
(38, 2, 'Esfoliante Corporal Rosa Mosqueta 250g - Porán', '2025-09-15', 0, 1, NULL),
(39, 1, 'Brilho labial pola aylr', '2025-10-20', 0, 1, NULL),
(40, 1, 'Gloss Labial com chaveirinho', '2025-11-25', 0, 1, NULL),
(41, 1, 'Sérum clareador e ÓLEO FACIAL DE CAMOMILA E CALÊNDULA', '2025-12-30', 50, 1, NULL);
-- ===========================
-- INSERTS PARA Produto_Caracteristica
-- Relacionando produtos às suas características baseado nos arquivos CSV
-- ===========================

-- Produtos SEM características específicas recebem 'sem caracteristica' (id 23)
-- Esponja de maquiagem Mini star
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 1, 0);

-- Brinde para Loja | Máscara facial para skincare - múltiplas características
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (24, 1, 2, 0); -- 50 Pçs,Rosa
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (25, 1, 2, 0); -- 20 Pçs,Rosa
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (26, 1, 2, 0); -- 50 Pçs,Lilás
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (27, 1, 2, 0); -- 10 Pçs,Rosa

-- batom de cacau personalizado 50 unidades
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 3, 0);

-- batom de cacau 15 unidades
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (2, 1, 4, 0); -- Lilás
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (7, 1, 4, 0); -- Rosa Pastel

-- Duo Lips Choco Fun Fenzza
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (3, 2, 5, 0); -- Brigadeiro
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (4, 2, 5, 0); -- Choco melo
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (8, 2, 5, 0); -- Pão de mel

-- Brow Rise Gel para sobrancelhas RubyRose
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 6, 0);

-- Máscara facial para Brindes | kit empreendedora
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (2, 1, 7, 0); -- Lilás
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (1, 1, 7, 0); -- Rosa

-- Gloss Labial Radiant Kiss RubyRose
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (5, 3, 8, 0); -- RK40

-- Batom de cacau para brindes | Empreendedoras
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (1, 1, 9, 0); -- Rosa
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (6, 3, 9, 0); -- Personalizado
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (2, 1, 9, 0); -- Lilás

-- batom de cacau 20 UNI
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (9, 1, 10, 0); -- Lilás frase cuide-se
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (6, 3, 10, 0); -- Personalizado

-- Blidagem Dapop
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 11, 0);

-- Delineador a prova d'água Playboy
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 12, 0);

-- Gloss Maça Max love
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 13, 0);

-- Bronzer cremoso stick Sunkiss RubyRose
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (18, 1, 14, 0); -- Sunset Sienna

-- Lapis labial draw mouth jasmyne
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (10, 1, 15, 0); -- cor 1

-- Brindes para clientes | xuxinhas para empreendedoras
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (1, 1, 16, 0); -- Rosa

-- Espelho Redondo 2 Faces de Mesa=
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 17, 0);

-- Brindes de batom de cacau personalizado 80UNI
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 18, 0);

-- CORRETIVO DE ALTA COBERTURA SMOOTH FEELING
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (28, 1, 19, 0); -- COR 03
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (29, 1, 19, 0); -- COR 02

-- Pó Rosa Mosqueta Fenzza
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 20, 0);

-- Lip Gloss Glitter - Ruby Rose
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (11, 1, 21, 0); -- Firefly

-- Glossy Lips Obsidian-Ruby Rose Moonstone
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 22, 0);

-- Blush Jelly SP Colors
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (12, 1, 23, 0); -- Cor 4
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (10, 1, 23, 0); -- cor 1

-- TINT CREAM CHOCO FUN
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (13, 2, 24, 0); -- Au lait( marrom claro)
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (15, 2, 24, 0); -- Flan (Vermelho)

-- Caneta Delineadora Eyeliner Marker Pink 21
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 25, 0);

-- Lápis de Contorno Labial Jasmyne
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (14, 1, 26, 0); -- Cor 2

-- LIP GLOSS LADY BEAUTY RED GLOW
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 27, 0);

-- Blindagem dapop
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 28, 0);

-- Rímel I Love Volumão Luisance
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 29, 0);

-- Blush trio My life
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (17, 1, 30, 0); -- Rosa claro

-- Sérum melancia e kiwi Melu
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (16, 2, 31, 0); -- Melancia

-- Iluminador e contorno Amazing Bobbi Rara
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 32, 0);

-- Gel Modelador para Sobrancelhas Melu
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 33, 0);

-- Pó Facial Translucido Solto Cor 3- Playboy 16g
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 34, 0);

-- Esfoliante Labotrat Morango e Melancia
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (22, 2, 35, 0); -- morango

-- Gloss Maxlove Lip volumoso cor 08
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 36, 0);

-- Kit de mini pincéis
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 37, 0);

-- Esfoliante Corporal Rosa Mosqueta 250g - Porán
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (23, 4, 38, 0);

-- Brilho labial pola aylr
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (20, 1, 39, 0); -- Vermelho

-- Gloss Labial com chaveirinho
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (19, 1, 40, 0); -- Azul

-- Sérum clareador e ÓLEO FACIAL DE CAMOMILA E CALÊNDULA
INSERT INTO Produto_Caracteristica (id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_caracteristica) VALUES (21, 3, 41, 0); -- sérum clareador

-- ===========================
-- INSERTS PARA Plataforma_Produto
-- Relacionando todos os Produto_Caracteristica com todas as plataformas
-- ===========================

-- Para cada Produto_Caracteristica, criar relacionamento com todas as 3 plataformas (Shopee=1, Nuvemshop=2, Loja Física=3)

-- Produto_Caracteristica ID 1: Esponja de maquiagem Mini star (sem característica)
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 1, 23, 4, 1, 0);

-- Produto_Caracteristica ID 2-5: Brinde para Loja | Máscara facial para skincare (múltiplas características)
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 2, 24, 1, 2, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 3, 25, 1, 2, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 4, 26, 1, 2, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 5, 27, 1, 2, 0);

-- Produto_Caracteristica ID 6: batom de cacau personalizado 50 unidades
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 6, 23, 4, 3, 0);

-- Produto_Caracteristica ID 7-8: batom de cacau 15 unidades
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 7, 2, 1, 4, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 8, 7, 1, 4, 0);

-- Produto_Caracteristica ID 9-11: Duo Lips Choco Fun Fenzza
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 9, 3, 2, 5, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 10, 4, 2, 5, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 11, 8, 2, 5, 0);

-- Produto_Caracteristica ID 12: Brow Rise Gel para sobrancelhas RubyRose
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 12, 23, 4, 6, 0);

-- Produto_Caracteristica ID 13-14: Máscara facial para Brindes | kit empreendedora
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 13, 2, 1, 7, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 14, 1, 1, 7, 0);

-- Produto_Caracteristica ID 15: Gloss Labial Radiant Kiss RubyRose
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 15, 5, 3, 8, 0);

-- Produto_Caracteristica ID 16-18: Batom de cacau para brindes | Empreendedoras
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 16, 1, 1, 9, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 17, 6, 3, 9, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 18, 2, 1, 9, 0);

-- Produto_Caracteristica ID 19-20: batom de cacau 20 UNI
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 19, 9, 1, 10, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 20, 6, 3, 10, 0);

-- Continuando com os demais produtos...
-- Produto_Caracteristica ID 21: Blidagem Dapop
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 21, 23, 4, 11, 0);

-- Produto_Caracteristica ID 22: Delineador a prova d'água Playboy
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 22, 23, 4, 12, 0);

-- Produto_Caracteristica ID 23: Gloss Maça Max love
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 23, 23, 4, 13, 0);

-- Produto_Caracteristica ID 24: Bronzer cremoso stick Sunkiss RubyRose
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 24, 18, 1, 14, 0);

-- Produto_Caracteristica ID 25: Lapis labial draw mouth jasmyne
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 25, 10, 1, 15, 0);

-- Produto_Caracteristica ID 26: Brindes para clientes | xuxinhas para empreendedoras
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 26, 1, 1, 16, 0);

-- Produto_Caracteristica ID 27: Espelho Redondo 2 Faces de Mesa=
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 27, 23, 4, 17, 0);

-- Produto_Caracteristica ID 28: Brindes de batom de cacau personalizado 80UNI
INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (1, 28, 23, 4, 18, 0);

-- Produto_Caracteristica ID 29-30: CORRETIVO DE ALTA COBERTURA SMOOTH FEELING

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 29, 28, 1, 19, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 30, 29, 1, 19, 0);

-- Produto_Caracteristica ID 31: Pó Rosa Mosqueta Fenzza

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 31, 23, 4, 20, 0);

-- Produto_Caracteristica ID 32: Lip Gloss Glitter - Ruby Rose

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 32, 11, 1, 21, 0);

-- Produto_Caracteristica ID 33: Glossy Lips Obsidian-Ruby Rose Moonstone

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 33, 23, 4, 22, 0);

-- Produto_Caracteristica ID 34-35: Blush Jelly SP Colors

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 34, 12, 1, 23, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 35, 10, 1, 23, 0);

-- Produto_Caracteristica ID 36-37: TINT CREAM CHOCO FUN

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 36, 13, 2, 24, 0);

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 37, 15, 2, 24, 0);

-- Produto_Caracteristica ID 38: Caneta Delineadora Eyeliner Marker Pink 21

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 38, 23, 4, 25, 0);

-- Produto_Caracteristica ID 39: Lápis de Contorno Labial Jasmyne

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 39, 14, 1, 26, 0);

-- Produto_Caracteristica ID 40: LIP GLOSS LADY BEAUTY RED GLOW

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 40, 23, 4, 27, 0);

-- Produto_Caracteristica ID 41: Blindagem dapop

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 41, 23, 4, 28, 0);

-- Produto_Caracteristica ID 42: Rímel I Love Volumão Luisance

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 42, 23, 4, 29, 0);

-- Produto_Caracteristica ID 43: Blush trio My life

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 43, 17, 1, 30, 0);

-- Produto_Caracteristica ID 44: Sérum melancia e kiwi Melu

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 44, 16, 2, 31, 0);

-- Produto_Caracteristica ID 45: Iluminador e contorno Amazing Bobbi Rara

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 45, 23, 4, 32, 0);

-- Produto_Caracteristica ID 46: Gel Modelador para Sobrancelhas Melu

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 46, 23, 4, 33, 0);

-- Produto_Caracteristica ID 47: Pó Facial Translucido Solto Cor 3- Playboy 16g

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 47, 23, 4, 34, 0);

-- Produto_Caracteristica ID 48: Esfoliante Labotrat Morango e Melancia

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 48, 22, 2, 35, 0);

-- Produto_Caracteristica ID 49: Gloss Maxlove Lip volumoso cor 08

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 49, 23, 4, 36, 0);

-- Produto_Caracteristica ID 50: Kit de mini pincéis

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 50, 23, 4, 37, 0);

-- Produto_Caracteristica ID 51: Esfoliante Corporal Rosa Mosqueta 250g - Porán

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 51, 23, 4, 38, 0);

-- Produto_Caracteristica ID 52: Brilho labial pola aylr

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 52, 20, 1, 39, 0);

-- Produto_Caracteristica ID 53: Gloss Labial com chaveirinho

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 53, 19, 1, 40, 0);

-- Produto_Caracteristica ID 54: Sérum clareador e ÓLEO FACIAL DE CAMOMILA E CALÊNDULA

INSERT INTO Plataforma_Produto (id_plataforma, id_produto_caracteristica, id_caracteristica, id_tipo_caracteristica, id_produto, quantidade_produto_plataforma) VALUES (2, 54, 21, 3, 41, 0);

