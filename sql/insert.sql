insert into cliente(nome, sexo, email, cpf) values('Joao', 'Masculino', null, '123.456.789-10'),
                                                  ('Pedro', 'Masculino', 'pedro@zap.com.br', '123.456.789-11'),
                                                  ('Paula', 'Feminino', 'paula@zap.com.br', '123.456.789-12'),
                                                  ('Helio', 'Masculino', 'helio@zap.com.br', '123.456.789-13'),
                                                  ('Sandra', 'Feminino', 'sandra@zap.com.br', '123.456.789-14');

insert into endereco(rua, bairro, cidade, estado, id_cliente) values('Rua Marechal Deodoro', 'Centro', 'Concordia', 'SC', 1),
                                                                    ('Rua Hermeto Pascal', 'Jardim', 'Arvoredo', 'SC', 2),
                                                                    ('Rua dos Salgueiros', 'Manguezal', 'Seara', 'SC', 3),
                                                                    ('Rua Joaquim Barbosa', 'Centro', 'Brasilia', 'DF', 4),
                                                                    ('Rua da Pedreira', 'Barbosa', 'Sao Paulo', 'SP', 5);

insert into telefone(tipo, telefone, id_cliente) values('Celular', '45 9 87673-9826', 2),
                                                       ('Residencial', '99 9 99999-9999', 5),
                                                       ('Comercial', '12 9 98127-7854', 3),
                                                       ('Celular', '43 9 18273-2183', 4),
                                                       ('Celular', '62 9 81723-7822', 1),                                                      
                                                       ('Comercial', '43 9 12837-8866', 4);