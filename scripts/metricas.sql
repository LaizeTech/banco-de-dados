-- Quantidade de funcionarios ativos
SELECT count(idUsuario) 
FROM Usuario
WHERE statusAtivo = 1;

-- Pegando o produto e a quantidade que estão abaixo da configuração de alerta
SELECT 
    p.nomeProduto,
    p.quantidadeProduto,
    CASE
        WHEN p.quantidadeProduto < c.quantidadeVioleta THEN 'Alerta Violeta'
        WHEN p.quantidadeProduto < c.quantidadeVermelha THEN 'Alerta Vermelho'
        WHEN p.quantidadeProduto < c.quantidadeAmarelo THEN 'Alerta Amarelo'
        ELSE 'OK'
    END AS nivelAlerta
FROM Produto p
JOIN ConfiguracaoAlertasQTD c ON 1 = 1
WHERE p.statusAtivo = 1
  AND (
      p.quantidadeProduto < c.quantidadeAmarelo
      OR p.quantidadeProduto < c.quantidadeVermelha
      OR p.quantidadeProduto < c.quantidadeVioleta
  );
  
-- Receita total nos últimos 7 dias
SELECT 
    SUM(s.precoVenda) AS renda_bruta
FROM Saida s
JOIN StatusVenda sv ON s.idStatusVenda = sv.idStatusVenda
WHERE sv.idStatusVenda = 1
  AND s.dtVenda >= CURDATE() - INTERVAL 6 DAY
  AND s.idTipoSaida = 1
GROUP BY s.dtVenda
ORDER BY s.dtVenda DESC;

-- Quantidades de vendas no mês por plataforma
SELECT 
    COUNT(s.idSaida) AS quantidade_venda, 
    p.nomePlataforma AS plataforma
FROM Saida s
JOIN StatusVenda sv ON s.idStatusVenda = sv.idStatusVenda
JOIN TipoSaida ts ON s.idTipoSaida = ts.idTipoSaida
JOIN Plataforma p ON s.idPlataforma = p.idPlataforma
WHERE ts.idTipoSaida = 1
  AND sv.idStatusVenda = 1
  AND MONTH(s.dtVenda) = MONTH(CURDATE())
  AND YEAR(s.dtVenda) = YEAR(CURDATE())
GROUP BY plataforma;

-- Quantidade de entradas nos últimos 3 dias
SELECT COUNT(idCompraProduto) AS quantidade_compra
FROM CompraProduto
WHERE dtCompra >= CURDATE() - INTERVAL 2 DAY;

-- Quantidade de saídas nos últimos 3 dias
SELECT COUNT(idSaida) AS quantidade_saida
FROM Saida
WHERE dtVenda >= CURDATE() - INTERVAL 2 DAY;

-- Entradas no mês atual (quantidade e valor total)
CREATE OR REPLACE VIEW vw_compras_mes_atual AS
SELECT 
    COUNT(idCompraProduto) AS quantidade_compra,
    SUM(precoCompra) AS valor_investido
FROM CompraProduto
WHERE MONTH(dtCompra) = MONTH(CURDATE())
  AND YEAR(dtCompra) = YEAR(CURDATE());

-- Receita mensal atual por plataforma 
CREATE OR REPLACE VIEW vw_receita_mensal AS
SELECT 
    SUM(s.precoVenda) AS receita_mensal
FROM Saida s
JOIN StatusVenda sv ON s.idStatusVenda = sv.idStatusVenda
WHERE s.idTipoSaida = 1
  AND sv.idStatusVenda = 1
  AND s.idPlataforma = 1 -- variável
  AND MONTH(s.dtVenda) = MONTH(CURDATE())
  AND YEAR(s.dtVenda) = YEAR(CURDATE());

-- Últimos 5 produtos comprados
SELECT 
    p.nomeProduto,
    cp.precoCompra,
    cp.quantidadeProduto
FROM CompraProduto cp
JOIN Produto p ON cp.idProduto = p.idProduto
ORDER BY cp.dtCompra DESC
LIMIT 5;

-- Top 5 produtos mais vendidos no mês atual
CREATE OR REPLACE VIEW vw_top5_produtos_vendidos_mes AS
SELECT 
    p.nomeProduto,
    SUM(isv.quantidade) AS total_vendido
FROM ItensSaida isv
JOIN Produto p ON isv.idProduto = p.idProduto
JOIN Saida s ON isv.idSaida = s.idSaida
WHERE MONTH(s.dtVenda) = MONTH(CURDATE())
  AND YEAR(s.dtVenda) = YEAR(CURDATE())
  AND s.idTipoSaida = 1
  AND s.idStatusVenda = 1
  AND s.idPlataforma = 1 -- variável
GROUP BY p.nomeProduto
ORDER BY total_vendido DESC
LIMIT 5;

-- Produtos inativos nos últimos 60 dias 
CREATE OR REPLACE VIEW vw_produtos_inativos_60_dias AS
SELECT 
    p.idProduto,
    p.nomeProduto
FROM Produto p
WHERE p.idProduto NOT IN (
    SELECT DISTINCT isv.idProduto
    FROM ItensSaida isv
    JOIN Saida s ON isv.idSaida = s.idSaida
    WHERE s.dtVenda >= CURDATE() - INTERVAL 60 DAY
      AND s.idTipoSaida = 1
      AND s.idStatusVenda = 1
      AND s.idPlataforma = 1 -- variável
)
AND p.statusAtivo = 1;

-- Receita dos últimos 4 meses agrupada por mês
CREATE OR REPLACE VIEW vw_receita_mensal_ultimos_4_meses AS
SELECT 
    DATE_FORMAT(s.dtVenda, '%Y-%m') AS mes,
    SUM(s.precoVenda) AS receita_mensal
FROM Saida s
JOIN StatusVenda sv ON s.idStatusVenda = sv.idStatusVenda
WHERE s.idTipoSaida = 1
  AND sv.idStatusVenda = 1
  AND s.dtVenda >= CURDATE() - INTERVAL 3 MONTH
GROUP BY DATE_FORMAT(s.dtVenda, '%Y-%m')
ORDER BY mes;

-- Receita bruta anual
CREATE OR REPLACE VIEW vw_receita_anual_2024 AS
SELECT 
    YEAR(s.dtVenda) AS ano,
    SUM(s.precoVenda) AS receita_bruta
FROM Saida s
WHERE s.idTipoSaida = 1
  AND s.idStatusVenda = 1
  AND YEAR(s.dtVenda) = 2024
GROUP BY YEAR(s.dtVenda);

-- Quantidade de vendas por plataforma no ano
CREATE OR REPLACE VIEW vw_vendas_por_plataforma AS
SELECT 
    COUNT(s.idSaida) AS quantidade_vendas,
    p.nomePlataforma AS plataforma
FROM Saida s
JOIN Plataforma p ON s.idPlataforma = p.idPlataforma
WHERE s.idTipoSaida = 1
  AND s.idStatusVenda = 1
  AND YEAR(s.dtVenda) = 2024
GROUP BY p.idPlataforma;

-- Top 5 meses com mais saídas no ano
CREATE OR REPLACE VIEW vw_top5_meses_mais_vendas AS
SELECT 
    MONTH(s.dtVenda) AS mes,
    COUNT(*) AS totalVendas
FROM Saida s
WHERE s.idTipoSaida = 1
  AND s.idStatusVenda = 1
  AND YEAR(s.dtVenda) = 2024
GROUP BY MONTH(s.dtVenda)
ORDER BY totalVendas DESC
LIMIT 5;

-- Valor bruto anual por plataforma
CREATE OR REPLACE VIEW vw_valor_bruto_anual_por_plataforma AS
SELECT 
    SUM(s.precoVenda) AS valor_bruto,
    p.nomePlataforma AS plataforma
FROM Saida s
JOIN Plataforma p ON s.idPlataforma = p.idPlataforma
WHERE s.idTipoSaida = 1
  AND s.idStatusVenda = 1
  AND YEAR(s.dtVenda) = 2024
GROUP BY p.idPlataforma;