- procedure com paramentros

CREATE PROCEDURE conta(n1 int, n2 int)
BEGIN

    select n1 + n2 as conta;

END;

CALL conta(100, 50);

CREATE PROCEDURE cad_produto(p_nome varchar(50), 
                             p_quantidade int(4),
                             p_preco float(8,4))
BEGIN

    INSERT INTO produtos(nome, quantidade, estoque)
    VALUES(p_nome, p_quantidade, p_preco);

END;

call cad_produto('Notebook', 5, 3000.00);
