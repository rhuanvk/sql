select
    nome,
    rua as endereço,
    bairro,
    cidade,
    email,
    telefone,
    tipo as 'tipo telefone'
from cliente c
    inner join endereco e on c.id_cliente = e.id_cliente
    inner join telefone t on c.id_cliente = t.id_cliente -- se tiver where, vai aqui
order by
    nome -- se adicionar "desc" o relatório sai em ordem descendente;
select sexo, count(sexo)
from cliente
group by sexo;

select nome from cliente where id_cliente in(x, y, z);

-- filtra por valores específicos

select
    nome,
    ifnull(email, 'Email não cadastrado') as email
from cliente;

select codigo, data_emissao
from cte_dados
where
    data_emissao between ( (
            extract (
                year
                from
                    current_date
            ) -1
        ) || '-05-31'
    ):: date
    and ( (
            extract (
                year
                from
                    current_date
            )
        ) || '-03-31'
    ):: date
select
    count(*) as ctes_emitidos,
    cp.nome
from cte_dados cd
    inner join cad_pessoas cp on cp.codigo = cd.destinatario_ref
group by nome
having count(*) > 10
select cd.codigo, (
        select serie
        from doc_series ds
        where ds.codigo = cd.serie_ref
    )
from cte_dados cd
where (
        select serie
        from doc_series ds
        where
            ds.codigo = cd.serie_ref
    ):: integer = 5
select
    cp.nome,
    cd.codigo as cte
from cte_dados cd
    inner join cad_pessoas cp on cp.codigo = cd.destinatario_ref
where cd.destinatario_ref in(
        select ce.pessoa_ref
        from cad_enderecos ce
            inner join cad_cidades cc on cc.codigo = ce.cidade_ref
        where
            cc.codigo = 3550308
    )
select cp.nome, (
        select logradouro
        from cad_enderecos ce
        where
            ce.pessoa_ref = cp.codigo
        order by codigo
        limit 1
    )
from cad_pessoas cp
order by nome
select codigo, placa
from cad_veiculos cv
where cv.marca_ref in ( (
            select codigo
            from
                cad_veiculos_marcas cvm
            where (
                    cvm.descricao = 'VOLVO'
                    or cvm.descricao = 'SCANIA'
                )
        )
    )