USE SGDB

CREATE TABLE Publicacao_Categoria (
  PublicISBN VARCHAR(20),
   INT,
  FOREIGN KEY (PublicISBN) REFERENCES Publicacao(ISBN),
  FOREIGN KEY (CategID) REFERENCES Categoria(ID),
  PRIMARY KEY (PublicISBN, CategID)
);
--------CATEGORIA ---inserido
CREATE TABLE Categoria (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50)
);

-- Publicacao_Categoria ---inserido

---------PUBLICACAO--inserido
CREATE TABLE Publicacao (
  ISBN VARCHAR(20) PRIMARY KEY,
  Tipo VARCHAR(10)
);
alter table Livro
Add Categoria VARCHAR(100);

alter table Revista
Add Categoria VARCHAR(100);


alter table Artigo
Add Categoria VARCHAR(100);

alter table Revista
Drop column Autor 

alter table Livro
Add Autor VARCHAR(100);

update from livro

-- LIVRO ---inserido
CREATE TABLE Livro (
  ISBN VARCHAR(20) PRIMARY KEY,
  CategoriaID INT,
  Titulo VARCHAR(100),
  AnoPublicacao INT,
  Editora VARCHAR(100),
  N_Exemplar INT,
  N_Exemplar_Emprestado INT,
  FOREIGN KEY (ISBN) REFERENCES Publicacao(ISBN),
  FOREIGN KEY (CategoriaID) REFERENCES Categoria(ID)
);

-- REVISTA ---inserido
CREATE TABLE Revista (
  ISBN VARCHAR(20) PRIMARY KEY,
  CategoriaID INT,
  Titulo VARCHAR(100),
  Editora VARCHAR(100),
  AnoPublicacao INT,
  Numero INT,
  N_Exemplar INT,
  N_Exemplar_Emprestado INT,
  FOREIGN KEY (ISBN) REFERENCES Publicacao(ISBN),
  FOREIGN KEY (CategoriaID) REFERENCES Categoria(ID)
);

-- ARTIGO ---inserido
CREATE TABLE Artigo (
  ISBN VARCHAR(20) PRIMARY KEY,
  CategoriaID INT,
  Titulo VARCHAR(100),
  AnoPublicacao INT,
  Arbitro VARCHAR(100),
  N_Exemplar INT,
  N_Exemplar_Emprestado INT,
  FOREIGN KEY (ISBN) REFERENCES Publicacao(ISBN),
  FOREIGN KEY (CategoriaID) REFERENCES Categoria(ID)
);

--------AUTOR ---inserido
CREATE TABLE Autor(
  ID INT PRIMARY KEY,
  Nome VARCHAR(100)
);

-- PUBLICACAO_AUTOR ---inserido
CREATE TABLE Publicacao_Autor (
  PublicacaoISBN VARCHAR(20),
  AutorID INT,
  FOREIGN KEY (PublicacaoISBN) REFERENCES Publicacao(ISBN),
  FOREIGN KEY (AutorID) REFERENCES Autor(ID),
  PRIMARY KEY (PublicacaoISBN, AutorID)
);

--------USUARIO ---inserido
CREATE TABLE Usuario (
  ID INT PRIMARY KEY,
  TipoUsuario VARCHAR(50),
  Nome VARCHAR(100),
  Email VARCHAR(100),
  Telefone VARCHAR(20),
  Morada VARCHAR(100)
);

-- ESTUDANTE ---inserido
CREATE TABLE Estudante (
  ID INT PRIMARY KEY,
  UsuarioID INT,
  NomeDaEscola VARCHAR(100),
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID)
);

-- TRABALHADOR ---inserido
CREATE TABLE Trabalhador (
  ID INT PRIMARY KEY,
  UsuarioID INT,
  Cargo VARCHAR(50),
  CentroDeTrabalho VARCHAR(100),
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID)
);

-- EMPRESTIMO ---inserido
CREATE TABLE Emprestimo (
  ID INT PRIMARY KEY,
  UsuarioID INT,
  PublicacaoISBN VARCHAR(20),
  DataEmprestimo DATE,
  DataDevolucao DATE,
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID),
  FOREIGN KEY (PublicacaoISBN) REFERENCES Publicacao(ISBN)
);


-- ESTUDANTE_EMPRESTIMO ---inserido
CREATE TABLE Estudante_Emprestimo (
  ID INT PRIMARY KEY,
  EstudanteID INT,
  EmprestimoID INT,
  FOREIGN KEY (EstudanteID) REFERENCES Estudante(ID),
  FOREIGN KEY (EmprestimoID) REFERENCES Emprestimo(ID)
);

-- TRABALHADOR_EMPRESTIMO ---inserido
CREATE TABLE Trabalhador_Emprestimo (
  ID INT PRIMARY KEY,
  TrabalhadorID INT,
  EmprestimoID INT,
  FOREIGN KEY (TrabalhadorID) REFERENCES Trabalhador(ID),
  FOREIGN KEY (EmprestimoID) REFERENCES Emprestimo(ID)
);
--------FUNCIONARIO---inserido
CREATE TABLE Funcionario (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Cargo VARCHAR(50)
);
SELECT * FROM Reserva

--------FUNCIONARIO_EMPRESTIMO---inserido
CREATE TABLE Funcionario_Emprestimo (
  ID INT PRIMARY KEY,
  FuncionarioID INT,
  EmprestimoID INT,
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(ID),
  FOREIGN KEY (EmprestimoID) REFERENCES Emprestimo(ID)
);

SELECT * FROM Reserva

drop table Reserva
--------RESERVA---inserido
CREATE TABLE Reserva (
  ID INT PRIMARY KEY,
  UsuarioID INT,
  PublicacaoISBN VARCHAR(20),
  DataReserva DATE,
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID),
  FOREIGN KEY (PublicacaoISBN) REFERENCES Publicacao(ISBN)
  );

  
drop table Funcionario_Reserva
  --------FUNCIONARIO_RESERVA---inserido
  CREATE TABLE Funcionario_Reserva (
  ID INT PRIMARY KEY,
  FuncionarioID INT,
  ReservaID INT,
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(ID),
  FOREIGN KEY (ReservaID) REFERENCES Reserva(ID)
);

--------DEVOLUCAO---inserido
CREATE TABLE Devolucao (
  ID INT IDENTITY(1,1) PRIMARY KEY, ---  INCRIMENTA MAIS 1 NO ID DE DEVOLUÇÃO AUTOMATICAMENTE A CADA INSERÇÃO NA TABELA DEVOLUÇÃO
  EmprestimoID INT,
  DataDevolucao DATE,
  FOREIGN KEY (EmprestimoID) REFERENCES Emprestimo(ID)
);
-------------------------------
--SELECT CONSTRAINT_NAME
--FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
--WHERE CONSTRAINT_NAME LIKE 'FK_%' AND TABLE_NAME = 'Devolucao';

--ALTER TABLE Devolucao
--DROP CONSTRAINT FK__Devolucao__Empre__7B5B524B;
----------------------------------
--------FUNCIONARIO_DEVOLUCAO ----feito
CREATE TABLE Funcionario_Devolucao (
  ID INT PRIMARY KEY,
  FuncionarioID INT,
  DevolucaoID INT,
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(ID),
  FOREIGN KEY (DevolucaoID) REFERENCES Devolucao(ID)
);


--------MULTA---inserido
CREATE TABLE Multa (
  ID INT PRIMARY KEY,
  Valor DECIMAL(10, 2),
  UsuarioID INT,
  FuncionarioID INT,
  PublicacaoISBN VARCHAR(20),
  DataAplicacao DATE,
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID),
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(ID),
  FOREIGN KEY (PublicacaoISBN) REFERENCES Publicacao(ISBN)
);

--------NOTIFICACAO
CREATE TABLE Notificacao (
  ID INT IDENTITY(9001,1) PRIMARY KEY,
  UsuarioID INT,
  FuncionarioID INT,
  PublicacaoISBN VARCHAR(20),
  TipoNotificacao VARCHAR(50),
  DataNotificacao DATE,
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID),
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(ID),
  FOREIGN KEY (PublicacaoISBN) REFERENCES Publicacao(ISBN)
);