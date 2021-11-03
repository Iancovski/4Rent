create database "4RENT" 
with owner = POSTGRES 
     encoding = 'UTF8' 
     LC_COLLATE = 'Portuguese_Brazil.1252' 
     LC_CTYPE = 'Portuguese_Brazil.1252' 
     tablespace = PG_DEFAULT
     connection limit = -1;

create table MUNICIPIO (
  ID serial not null,
  NOME varchar(50) not null,
  UF char(2) not null,

  constraint PK_MUNICIPIO primary key (ID)
);

create table ENDERECO (
  ID serial not null,
  ID_MUNICIPIO integer not null,
  CEP varchar(10),
  BAIRRO varchar(50) not null,
  RUA varchar(100) not null,
  NUMERO integer not null,
  ATIVO char(1),

  constraint PK_ENDERECO primary key (ID)
);

create table IMOVEL (
  ID serial not null,
  ID_ENDERECO integer not null,
  DESCRICAO varchar(50) not null,
  TIPO_ALUGUEL_PADRAO char(1) not null,
  VALOR_MENSAL double precision,
  VALOR_SEMANAL double precision, 
  VALOR_DIARIA double precision, 
  ATIVO char(1),

  constraint PK_IMOVEL primary key (ID)
);

create table ENDERECO_DESPESA (
  ID serial not null,
  ID_ENDERECO integer not null,
  ID_DESPESA integer not null,

  constraint PK_ENDERECO_DESPESA primary key (ID)
);

create table IMOVEL_DESPESA (
  ID serial not null,
  ID_IMOVEL integer not null,
  ID_DESPESA integer not null,

  constraint PK_IMOVEL_DESPESA primary key (ID)
);

create table ALUGUEL (
  ID serial not null,
  ID_IMOVEL integer not null,
  ID_INQUILINO integer not null,
  DATA_ENTRADA date not null,
  TIPO_ALUGUEL char(1) not null,
  PERIODO integer not null,
  DATA_SAIDA date not null,
  ATIVO char(1),

  constraint PK_ALUGUEL primary key (ID)
);

create table INQUILINO (
  ID serial not null,
  NOME varchar(100) not null,
  CPF varchar(20) not null,
  RG varchar(20),
  RENDA double precision,
  ATIVO char(1),

  constraint PK_INQUILINO primary key (ID)
);

create table INQUILINO_CONTATO (
  ID serial not null,
  ID_INQUILINO integer not null,
  DESCRICAO varchar(50) not null,
  CONTATO varchar(200) not null,

  constraint PK_INQUILINO_CONTATO primary key (ID)
);

create table ALUGUEL_RECEITA (
  ID serial not null,
  ID_ALUGUEL integer not null,
  ID_RECEITA integer not null,
  TIPO char(1) not null,

  constraint PK_ALUGUEL_RECEITA primary key (ID)
);

create table RECEITA_DESPESA (
  ID serial not null,
  DATA date not null,
  DATA_VENCIMENTO date not null,
  ID_INQUILINO integer,
  DESCRICAO varchar(500) not null,
  VALOR double precision not null,
  TIPO char(1) not null,
  ORIGEM char(1) not null,
  BAIXADO char(1),
  DATA_BAIXA date, 

  constraint PK_RECEITA_DESPESA primary key (ID)
);

alter table ENDERECO add
constraint FK_ENDERECO_MUNICIPIO
foreign key (ID_MUNICIPIO) references MUNICIPIO (ID);

alter table IMOVEL add
constraint FK_IMOVEL_ENDERECO
foreign key (ID_ENDERECO) references ENDERECO (ID);

alter table ENDERECO_DESPESA add
constraint FK_ENDERECO_DESPESA_ENDERECO
foreign key (ID_ENDERECO) references ENDERECO (ID);

alter table ENDERECO_DESPESA add
constraint FK_ENDERECO_DESPESA_DESPESA
foreign key (ID_DESPESA) references RECEITA_DESPESA (ID);

alter table IMOVEL_DESPESA add
constraint FK_IMOVEL_DESPESA_IMOVEL
foreign key (ID_IMOVEL) references IMOVEL (ID);

alter table IMOVEL_DESPESA add
constraint FK_IMOVEL_DESPESA_DESPESA
foreign key (ID_DESPESA) references RECEITA_DESPESA (ID);

alter table ALUGUEL add
constraint FK_ALUGUEL_IMOVEL
foreign key (ID_IMOVEL) references IMOVEL (ID);

alter table ALUGUEL add
constraint FK_ALUGUEL_INQUILINO
foreign key (ID_INQUILINO) references INQUILINO (ID);

alter table INQUILINO_CONTATO add
constraint FK_INQUILINO_CONTATO_INQUILINO
foreign key (ID_INQUILINO) references INQUILINO (ID);

alter table ALUGUEL_RECEITA add
constraint FK_ALUGUEL_RECEITA_ALUGUEL
foreign key (ID_ALUGUEL) references ALUGUEL (ID);

alter table ALUGUEL_RECEITA add
constraint FK_ALUGUEL_RECEITA_RECEITA
foreign key (ID_RECEITA) references RECEITA_DESPESA (ID);

alter table RECEITA_DESPESA add
constraint FK_RECEITA_DESPESA_INQUILINO
foreign key (ID_INQUILINO) references INQUILINO (ID);