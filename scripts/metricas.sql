-- Quantidade de funcionarios ativos
SELECT count(id_usuario) 
FROM Usuario
WHERE status_ativo = 1;

-- Pegando o produto e a quantidade que estÃ£o abaixo da configuraÃ§Ã£o de alerta
SELECT 
    p.nome_produto,
    p.quantidade_produto,
    CASE
        WHEN p.quantidade_produto < c.quantidade_violeta THEN 'Alerta Violeta'
        WHEN p.quantidade_produto < c.quantidade_vermelha THEN 'Alerta Vermelho'
        WHEN p.quantidade_produto < c.quantidade_amarelo THEN 'Alerta Amarelo'
        ELSE 'OK'
    END AS nivelAlerta
FROM Produto p
JOIN Configuracao_AlertasQTD c ON 1 = 1
WHERE p.status_ativo = 1
  AND (
      p.quantidade_produto < c.quantidade_amarelo
      OR p.quantidade_produto < c.quantidade_vermelha
      OR p.quantidade_produto < c.quantidade_violeta
  );
  
-- Receita total nos Ãºltimos 7 dias
SELECT 
    SUM(s.preco_venda) AS renda_bruta
FROM Saida s
JOIN Status_Venda sv ON s.id_status_venda = sv.id_status_venda
WHERE sv.id_status_venda = 1
  AND s.dt_venda >= CURDATE() - INTERVAL 6 DAY
  AND s.id_tipo_saida = 1
GROUP BY s.dt_venda
ORDER BY s.dt_venda DESC;

-- Quantidades de vendas no mÃªs por plataforma
SELECT 
    COUNT(s.id_saida) AS quantidade_venda, 
    p.nome_plataforma AS plataforma
FROM saida s
JOIN status_venda sv ON s.id_status_venda = sv.id_status_venda
JOIN tipo_saida ts ON s.id_tipo_saida = ts.id_tipo_saida
JOIN plataforma p ON s.id_plataforma = p.id_plataforma
WHERE ts.id_tipo_saida = 1
  AND sv.id_status_venda = 1
  AND MONTH(s.dt_venda) = MONTH(CURDATE())
  AND YEAR(s.dt_venda) = YEAR(CURDATE())
GROUP BY p.nome_plataforma;

-- Quantidade de entradas nos Ãºltimos 3 dias
SELECT COUNT(id_compra_produto) AS quantidade_compra
FROM CompraProduto
WHERE dt_compra >= CURDATE() - INTERVAL 2 DAY;

-- Quantidade de saÃ­das nos Ãºltimos 3 dias
SELECT COUNT(id_saida) AS quantidade_saida
FROM Saida
WHERE dt_venda >= CURDATE() - INTERVAL 2 DAY;

-- Entradas no mÃªs atual (quantidade e valor total)
CREATE OR REPLACE VIEW vw_compras_mes_atual AS
SELECT 
    COUNT(id_compra_produto) AS quantidade_compra,
    SUM(preco_compra) AS valor_investido
FROM CompraProduto
WHERE MONTH(dt_compra) = MONTH(CURDATE())
  AND YEAR(dt_compra) = YEAR(CURDATE());

-- Receita mensal atual por plataforma 
CREATE OR REPLACE VIEW vw_receita_mensal AS
SELECT 
    SUM(s.preco_venda) AS receita_mensal
FROM Saida s
JOIN StatusVenda sv ON s.id_status_venda = sv.id_status_venda
WHERE s.id_tipo_saida = 1
  AND sv.id_status_venda = 1
  AND s.id_plataforma = 1 -- variÃ¡vel
  AND MONTH(s.dt_venda) = MONTH(CURDATE())
  AND YEAR(s.dt_venda) = YEAR(CURDATE());

-- Ãšltimos 5 produtos comprados
SELECT 
    p.nome_produto,
    cp.preco_compra,
    cp.quantidade_produto
FROM CompraProduto cp
JOIN Produto p ON cp.id_produto = p.id_produto
ORDER BY cp.dt_compra DESC
LIMIT 5;

-- Top 5 produtos mais vendidos no mÃªs atual
CREATE OR REPLACE VIEW vw_top5_produtos_vendidos_mes AS
SELECT 
    p.nome_produto,
    SUM(isv.quantidade) AS total_vendido
FROM ItensSaida isv
JOIN Produto p ON isv.id_produto = p.id_produto
JOIN Saida s ON isv.id_saida = s.id_saida
WHERE MONTH(s.dt_venda) = MONTH(CURDATE())
  AND YEAR(s.dt_venda) = YEAR(CURDATE())
  AND s.id_tipo_saida = 1
  AND s.id_status_venda = 1
  AND s.id_plataforma = 1 -- variÃ¡vel
GROUP BY p.nome_produto
ORDER BY total_vendido DESC
LIMIT 5;

-- Produtos inativos nos Ãºltimos 60 dias 
CREATE OR REPLACE VIEW vw_produtos_inativos_60_dias AS
SELECT 
    p.id_produto,
    p.nome_produto
FROM Produto p
WHERE p.id_produto NOT IN (
    SELECT DISTINCT isv.id_produto
    FROM ItensSaida isv
    JOIN Saida s ON isv.id_saida = s.id_saida
    WHERE s.dt_venda >= CURDATE() - INTERVAL 60 DAY
      AND s.id_tipo_saida = 1
      AND s.id_status_venda = 1
      AND s.id_plataforma = 1 -- variÃ¡vel
)
AND p.status_ativo = 1;

-- Receita dos Ãºltimos 4 meses agrupada por mÃªs
CREATE OR REPLACE VIEW vw_receita_mensal_ultimos_4_meses AS
SELECT 
    DATE_FORMAT(s.dt_venda, '%Y-%m') AS mes,
    SUM(s.preco_venda) AS receita_mensal
FROM Saida s
JOIN StatusVenda sv ON s.id_status_venda = sv.id_status_venda
WHERE s.id_tipo_saida = 1
  AND sv.id_status_venda = 1
  AND s.dt_venda >= CURDATE() - INTERVAL 3 MONTH
GROUP BY DATE_FORMAT(s.dt_venda, '%Y-%m')
ORDER BY mes;

-- Receita bruta anual
CREATE OR REPLACE VIEW vw_receita_anual_2024 AS
SELECT 
    YEAR(s.dt_venda) AS ano,
    SUM(s.preco_venda) AS receita_bruta
FROM Saida s
WHERE s.id_tipo_saida = 1
  AND s.id_status_venda = 1
  AND YEAR(s.dt_venda) = 2024
GROUP BY YEAR(s.dt_venda);

-- Quantidade de vendas por plataforma no ano
CREATE OR REPLACE VIEW vw_vendas_por_plataforma AS
SELECT 
    COUNT(s.id_saida) AS quantidade_vendas,
    p.nome_plataforma AS plataforma
FROM Saida s
JOIN Plataforma p ON s.id_plataforma = p.id_plataforma
WHERE s.id_tipo_saida = 1
  AND s.id_status_venda = 1
  AND YEAR(s.dt_venda) = 2024
GROUP BY p.id_plataforma;

-- Top 5 meses com mais saÃ­das no ano
CREATE OR REPLACE VIEW vw_top5_meses_mais_vendas AS
SELECT 
    MONTH(s.dt_venda) AS mes,
    COUNT(*) AS total_vendas
FROM Saida s
WHERE s.id_tipo_saida = 1
  AND s.id_status_venda = 1
  AND YEAR(s.dt_venda) = 2024
GROUP BY MONTH(s.dt_venda)
ORDER BY total_vendas DESC
LIMIT 5;

-- Valor bruto anual por plataforma
CREATE OR REPLACE VIEW vw_valor_bruto_anual_por_plataforma AS
SELECT 
    SUM(s.preco_venda) AS valor_bruto,
    p.nome_plataforma AS plataforma
FROM Saida s
JOIN Plataforma p ON s.id_plataforma = p.id_plataforma
WHERE s.id_tipo_saida = 1
  AND s.id_status_venda = 1
  AND YEAR(s.dt_venda) = 2024
GROUP BY p.id_plataforma;
