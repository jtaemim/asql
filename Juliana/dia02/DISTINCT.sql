-- Databricks notebook source
select
distinct descUF
from  silver.olist.cliente
order by descUF

-- COMMAND ----------

select distinct 
descUF,
descCidade
from  silver.olist.cliente
order by descUF, descCidade desc
