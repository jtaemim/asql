-- Databricks notebook source

-- selecione todos os clientes paulistanos
select
*
from silver.olist.cliente
where descUF='SP' and descCidade='sao paulo'

-- COMMAND ----------

-- selecione todos os clientes paulistas
select
*
from silver.olist.cliente
where descUF='SP'

-- COMMAND ----------

-- selecione todos os clientes cariocas e paulistas
select
*
from silver.olist.cliente
where descUF='SP' or (descUF='RJ' and descCidade='rio de janeiro')

-- COMMAND ----------

-- Selecione produtos de perfumaria e bebes com altura maior que 5cm
select
*
from silver.olist.produto
where descCategoria ='perfumaria' and vlAlturaCm>5;
