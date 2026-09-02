CREATE TABLE Construtora (
    codigo INT PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    CNPJ VARCHAR2(14) NOT NULL UNIQUE,
    nome_fantasia VARCHAR2(100)
);

CREATE TABLE Telefone (
    fk_Construtora_codigo INT NOT NULL,
    telefone VARCHAR2(14) NOT NULL,
    CONSTRAINT pk_telefone PRIMARY KEY (fk_Construtora_codigo, telefone),
    CONSTRAINT fk_telefone_construtora
        FOREIGN KEY (fk_Construtora_codigo)
        REFERENCES Construtora(codigo)
);

CREATE TABLE Obra (
    codigo INT PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    logradouro VARCHAR2(100),
    numero VARCHAR2(10),
    complemento VARCHAR2(100),
    fk_Construtora_codigo INT NOT NULL,
    CONSTRAINT fk_obra_construtora
        FOREIGN KEY (fk_Construtora_codigo)
        REFERENCES Construtora(codigo)
);

CREATE TABLE Trabalhador (
    CPF VARCHAR2(14) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    salario NUMBER(10,2),
    fk_obra_codigo INT NOT NULL,
    CONSTRAINT fk_trabalhador_obra
        FOREIGN KEY (fk_obra_codigo)
        REFERENCES Obra(codigo)
);

CREATE TABLE Categoria (
    codigo INT PRIMARY KEY,
    descricao VARCHAR2(100) NOT NULL
);

CREATE TABLE Equipamento (
    codigo INT PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    valor_de_uso_diario NUMBER(10,2),
    fk_Categoria_codigo INT NOT NULL,
    CONSTRAINT fk_equipamento_categoria
        FOREIGN KEY (fk_Categoria_codigo)
        REFERENCES Categoria(codigo)
);

CREATE TABLE Obras_Equipamentos (
    data_ini DATE,
    data_termino DATE,
    fk_Equipamento_codigo INT NOT NULL,
    fk_Obra_codigo INT NOT NULL,
    CONSTRAINT pk_aloca_equip PRIMARY KEY (fk_Equipamento_codigo, fk_Obra_codigo),
    CONSTRAINT fk_alocaequip_equipamento
        FOREIGN KEY (fk_Equipamento_codigo)
        REFERENCES Equipamento(codigo),
    CONSTRAINT fk_alocaequip_obra
        FOREIGN KEY (fk_Obra_codigo)
        REFERENCES Obra(codigo)
);