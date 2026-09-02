-- =========================================
-- TABELA: Categoria
-- =========================================
INSERT INTO Categoria (codigo, descricao) VALUES (1, 'Concretagem');
INSERT INTO Categoria (codigo, descricao) VALUES (2, 'Acesso e Elevação');
INSERT INTO Categoria (codigo, descricao) VALUES (3, 'Geradores e Compressores');
INSERT INTO Categoria (codigo, descricao) VALUES (4, 'Andaimes');
INSERT INTO Categoria (codigo, descricao) VALUES (5, 'Ferramenta Elétrica');


-- =========================================
-- TABELA: Construtora
-- =========================================
INSERT INTO Construtora (codigo, nome, cnpj, nome_fantasia)
VALUES (10, 'Construtora Alfa S.A.', '12345678000195', 'Alfa Incorporações');

INSERT INTO Construtora (codigo, nome, cnpj, nome_fantasia)
VALUES (20, 'Taigor', '98765432000110', 'Taigor Construções');


-- =========================================
-- TABELA: Telefone
-- =========================================
INSERT INTO Telefone (fk_construtora_codigo, telefone) VALUES (10, '(51) 3333-3334');
INSERT INTO Telefone (fk_construtora_codigo, telefone) VALUES (10, '(51) 3333-3335');
INSERT INTO Telefone (fk_construtora_codigo, telefone) VALUES (10, '(51) 3333-3336');
INSERT INTO Telefone (fk_Construtora_codigo, telefone) VALUES (20, '(51) 9999-1111');
INSERT INTO Telefone (fk_Construtora_codigo, telefone) VALUES (20, '(51) 9999-2222');

-- =========================================
-- TABELA: Equipamento
-- =========================================
INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (301, 'Betoneira', 100.00, 1);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (302, 'Cortadora de Piso', 10.00, 1);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (303, 'Mangote', 30.50, 1);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (304, 'Guincho', 250.00, 2);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (305, 'Gerador', 451.00, 3);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (306, 'Piso Metálico', 150.00, 4);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (307, 'Furadeira de bancada', 65.00, 5);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (308, 'Parafusadeira', 37.00, 5);

INSERT INTO Equipamento (codigo, nome, valor_de_uso_diario, fk_categoria_codigo)
VALUES (309, 'Plaina', 25.00, 5);


-- =========================================
-- TABELA: Obra
-- =========================================
INSERT INTO Obra (codigo, logradouro, numero, complemento, nome, fk_construtora_codigo)
VALUES (115, 'Travessa dos Lagos', 100, 'Norte', 'Condomínio dos Lagos', 10);

INSERT INTO Obra (codigo, logradouro, numero, complemento, nome, fk_construtora_codigo)
VALUES (116, 'Avenida Rio Grande', 22, 'Lado A', 'Condomínio Araras', 10);

INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, fk_Construtora_codigo)
VALUES (117, 'Residencial Taigor Sul', 'Rua das Flores', '120', 'Bloco A', 20);

INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, fk_Construtora_codigo)
VALUES (118, 'Edifício Taigor Norte', 'Avenida Central', '450', 'Sala 2', 20);

-- =========================================
-- TABELA: Obras_Equipamentos
-- =========================================
INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (115, 301, TO_DATE('18/03/2022','DD/MM/YYYY'), TO_DATE('24/10/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (115, 304, TO_DATE('20/04/2022','DD/MM/YYYY'), TO_DATE('02/08/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (115, 306, TO_DATE('06/07/2021','DD/MM/YYYY'), TO_DATE('18/07/2021','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (115, 307, TO_DATE('04/03/2022','DD/MM/YYYY'), TO_DATE('20/03/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (115, 309, TO_DATE('04/08/2021','DD/MM/YYYY'), TO_DATE('10/08/2021','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (116, 304, TO_DATE('22/10/2022','DD/MM/YYYY'), TO_DATE('25/10/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (116, 305, TO_DATE('07/03/2022','DD/MM/YYYY'), TO_DATE('10/03/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (116, 306, TO_DATE('12/09/2022','DD/MM/YYYY'), TO_DATE('21/09/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (116, 307, TO_DATE('16/08/2022','DD/MM/YYYY'), TO_DATE('24/08/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (116, 308, TO_DATE('23/10/2022','DD/MM/YYYY'), TO_DATE('25/10/2022','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (117, 301, TO_DATE('01/04/2026','DD/MM/YYYY'), TO_DATE('10/04/2026','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (117, 304, TO_DATE('02/04/2026','DD/MM/YYYY'), TO_DATE('12/04/2026','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (117, 305, TO_DATE('03/04/2026','DD/MM/YYYY'), TO_DATE('15/04/2026','DD/MM/YYYY'));

INSERT INTO Obras_Equipamentos (fk_obra_codigo, fk_equipamento_codigo, data_ini, data_termino)
VALUES (117, 306, TO_DATE('04/04/2026','DD/MM/YYYY'), TO_DATE('18/04/2026','DD/MM/YYYY'));


-- =========================================
-- TABELA: Trabalhador
-- =========================================
INSERT INTO Trabalhador (cpf, nome, salario, fk_obra_codigo)
VALUES ('101.101.101-34', 'José Chaves', 2200.00, 115);

INSERT INTO Trabalhador (cpf, nome, salario, fk_obra_codigo)
VALUES ('102.102.102-91', 'Pedro Passos', 3502.18, 115);

INSERT INTO Trabalhador (cpf, nome, salario, fk_obra_codigo)
VALUES ('103.103.103-18', 'Maria Aparecida', 2800.87, 115);

INSERT INTO Trabalhador (cpf, nome, salario, fk_obra_codigo)
VALUES ('104.104.104-52', 'Carlos Dutra', 3100.00, 116);

INSERT INTO Trabalhador (cpf, nome, salario, fk_obra_codigo)
VALUES ('105.105.105-85', 'Mário Pires', 4323.29, 116);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('201.201.201-01', 'Lucas Martins', 2500.00, 117);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('202.202.202-02', 'Bruno Ferreira', 2800.00, 117);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('203.203.203-03', 'Mariana Souza', 3100.00, 117);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('204.204.204-04', 'Fernanda Lima', 2950.00, 117);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('205.205.205-05', 'Rafael Costa', 3300.00, 117);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('206.206.206-06', 'Carlos Henrique', 2600.00, 118);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('207.207.207-07', 'Patricia Gomes', 3000.00, 118);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('208.208.208-08', 'Juliana Alves', 3200.00, 118);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('209.209.209-09', 'André Pereira', 3400.00, 118);

INSERT INTO Trabalhador (CPF, nome, salario, fk_obra_codigo)
VALUES ('210.210.210-10', 'Camila Rocha', 2900.00, 118);