-- Databricks notebook source
SELECT 
  *,
  case
    when descUF='SP' then 'Paulista' 
    WHEN descUF='PR' then 'Paranaense'
    when descUF='RJ' then 'Fluminense'
    else 'Desconhecido'
  end as naturalidade,

  case
    when descUF in ('SP','RJ') then 'Sudeste'
    when descUF in ('SC','PR') then 'Sul'
  else 'Desconhecido'
  end as regiao
FROM silver.olist.cliente

