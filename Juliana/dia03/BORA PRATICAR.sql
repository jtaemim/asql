-- Databricks notebook source
-- DBTITLE 1,QUAL ESTADO TEM MAIS VENDEDORES?
SELECT 
  descUF
  
FROM SILVER.OLIST.VENDEDOR
GROUP BY descUF
ORDER BY count(DISTINCT idVendedor) DESC
LIMIT 1

-- COMMAND ----------

SELECT 
  descUF,
  COUNT(DISTINCT idVendedor) AS QT_VENDEDOR
FROM SILVER.OLIST.VENDEDOR
GROUP BY descUF
HAVING count(DISTINCT idVendedor)>20
ORDER BY  QT_VENDEDOR DESC
--LIMIT 1



-- COMMAND ----------


select * 

from SILVER.olist.pedido
--where dtPedido<='2017-12-01'
--  and dtPedido>=date('2017-12-01') - interval 3 month

--where dtPedido<='2017-12-01'
-- and dtPedido>=add_months(date('2017-12-01'),-3 )

 where dtpedido<=now()
 and dtPedido>=dateadd(month,3,'2017-12-01' )
