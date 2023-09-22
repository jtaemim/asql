-- Databricks notebook source
select 
*
from silver.olist.produto
where descCategoria='bebes'
order by vlPesoGramas desc, vlComprimentoCm desc
