CREATE DATABASE CRUDMVC;

USE CRUDMVC;

CREATE TABLE [Clientes] (
    [Id] int NOT NULL IDENTITY,
    [Nome] nvarchar(40) NOT NULL,
    [Endereco] nvarchar(200) NOT NULL,
    [Telefone] nvarchar(11) NOT NULL,
    [CPF] char(11) NOT NULL,
    [Sexo] char(1) NULL,
    [Idade] int NOT NULL,
    CONSTRAINT [PK_Clientes] PRIMARY KEY ([Id])
);


CREATE TABLE [Destinos] (
    [Id] int NOT NULL IDENTITY,
    [Titulo] nvarchar(20) NOT NULL,
    [Descricao] nvarchar(200) NOT NULL,
    [Tipo] nvarchar(3) NULL,
    [Promo] nvarchar(3) NULL,
    [Preco] money NOT NULL,
    CONSTRAINT [PK_Destinos] PRIMARY KEY ([Id])
);


CREATE TABLE [Pacotes] (
    [Id] int NOT NULL IDENTITY,
    [Id_cliente] int NOT NULL,
    [Id_destino] int NOT NULL,
    [DataCompra] date NOT NULL,
    [DataViagem] date NOT NULL,
    [Preco] money NOT NULL,
    CONSTRAINT [PK_Pacotes] PRIMARY KEY ([Id]),
	FOREIGN KEY(Id_cliente) REFERENCES Clientes([Id]), /*  Define Id_cliente como chave estrangeira de Clientes */ 
	FOREIGN KEY(Id_destino) REFERENCES Destinos([Id])  /*  Define Id_destino como chave estrangeira de Destinos */
);

