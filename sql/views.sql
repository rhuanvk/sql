create view v_clientes as
select nome
from cliente;

select * from v_clientes;

show tables; -- para ver as views

drop view v_clientes

/* é possível fazer updates em views com joins,
   inserts e deletes não são permitidos */