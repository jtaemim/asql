-- Databricks notebook source
SELECT
COUNT(*),
COUNT(1),
count(idProduto),
COUNT(DISTINCT idProduto),
count(DISTINCT idPedido,idPedidoItem)

FROM SILVER.olist.item_pedido
--WHERE year(dtLimiteEnvio)=2018

-- COMMAND ----------

SELECT 
avg(vlPesoGramas),
min(vlPesoGramas),
max(vlPesoGramas),
std(vlPesoGramas),
median(vlPesoGramas),
percentile(vlPesoGramas,0.25),
percentile(vlPesoGramas,0,75)
FROM silver.olist.produto

-- COMMAND ----------

SELECT
descUF,
count(DISTINCT idVendedor)
FROM silver.olist.vendedor
GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

SELECT 
descCategoria,
avg(vlPesoGramas) AS avpesograma,
count(DISTINCT idProduto) as qtd_produto
FROM silver.olist.produto
GROUP BY descCategoria
ORDER BY avpesograma desc
LIMIT 10
