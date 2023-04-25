-- retorna o vendedor que mais vendeu no mes escolhido (março)
select nome, vendas_marco
from vendedores
where marco = (select max(marco) from vendedores)

-- retorna os vendedores que venderam mais do que a media do mes
select nome, vendas_marco
from vendedores
where marco > (select avg(marco) from vendedores)