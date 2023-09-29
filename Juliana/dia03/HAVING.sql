-- Databricks notebook source
SELECT 
  DATE(dtPedido) AS DIA_PEDIDO,
  count(DISTINCT idPedido) AS QT_PEDIDO

FROM SILVER.OLIST.PEDIDO
GROUP BY DIA_PEDIDO
ORDER BY DIA_PEDIDO

-- COMMAND ----------

select
descCategoria,
count(idProduto) AS QT_PRODUTO,
avg(vlPesoGramas) AS AVG_PESO,
avg(vlAlturaCm*vlComprimentoCm*vlLarguraCm) AS AVG_VOLUME
from SILVER.olist.produto
group by descCategoria
having QT_PRODUTO>=500
order by QT_PRODUTO desc
