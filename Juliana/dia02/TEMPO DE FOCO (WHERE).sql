-- Databricks notebook source
--Lista de pedidos com mais de um item.

select 
distinct
idPedido

from silver.olist.item_pedido
where idpedidoitem>1

-- COMMAND ----------

--Lista de pedidos que o frete é mais caro que o item.

SELECT
*
FROM SILVER.OLIST.ITEM_PEDIDO
WHERE vlPreco<vlFrete;

-- COMMAND ----------

--Lista de pedidos que ainda não foram enviados.

SELECT
* 
FROM SILVER.OLIST.pedido
WHERE dtEnvio IS NULL

-- COMMAND ----------

--Lista de pedidos que foram entregues com atraso.

SELECT
* 
FROM SILVER.OLIST.pedido
WHERE dtEntregue>dtEstimativaEntrega

-- COMMAND ----------

--Lista de pedidos que foram entregues com 2 dias de antecedência.


SELECT
*,
datediff(dtEntregue,dtEstimativaEntrega ) as nrDiasEntrega
FROM SILVER.OLIST.pedido
WHERE datediff(dtEntregue,dtEstimativaEntrega )=-2

-- COMMAND ----------

--Lista de pedidos feitos em dezembro de 2017 e entregues com atraso

SELECT 
*,
month(dtPedido) as mes_pedido,
year(dtPedido) as ano_pedido
FROM SILVER.OLIST.pedido
where month(dtPedido)=12 and year(dtPedido)=2017

-- COMMAND ----------

-- DBTITLE 1,Lista de pedidos com avaliação maior ou igual que 4
select
*
from silver.olist.avaliacao_pedido
where vlNota>=4

-- COMMAND ----------

-- DBTITLE 1,Lista de pedidos com 2 ou mais parcelas menores que R$20,00
select 
*,
vlPagamento/nrParcelas as parcelas
from silver.olist.pagamento_pedido
where nrParcelas>=2 or (vlPagamento/nrParcelas)<20
