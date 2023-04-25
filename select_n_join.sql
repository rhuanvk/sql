select nome, rua as endereço, bairro, cidade, email, telefone, tipo as 'tipo telefone'
from cliente c
inner join endereco e on c.id_cliente = e.id_cliente
inner join telefone t on c.id_cliente = t.id_cliente
-- se tiver where, vai aqui
order by nome -- se adicionar "desc" o relatório sai em ordem descendente;

select sexo, count(sexo) 
from cliente 
group by sexo;

select nome
from cliente
where id_cliente in(x, y, z); -- filtra por valores específicos


select nome, ifnull(email, 'Email não cadastrado') as email
from cliente;

