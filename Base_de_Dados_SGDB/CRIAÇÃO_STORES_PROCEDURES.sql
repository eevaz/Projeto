USE SGDB
	--select *
	--from Categoria Livro l  INNER JOIN categoria c
	--on c.ID=l.CategoriaID
	--where l.CategoriaID=3
--procedure SELECT

--PROCEDURE Selecionar_Emprestimo
CREATE PROCEDURE Selecionar_Emprestimo
AS
BEGIN

    SELECT * FROM Emprestimo;
END

EXEC Selecionar_Emprestimo;

-------------------------
drop PROCEDURE Selecionar_EmprestimoComParametros
CREATE PROCEDURE Selecionar_EmprestimoComParametros
    @Parametro1 INT
    
AS
BEGIN
    
    SELECT * FROM Emprestimo WHERE ID = @Parametro1;
END


EXEC Selecionar_EmprestimoComParametros @Parametro1 = 3313;

SELECT NOME 
FROM Usuario
WHERE ID = 2014;
------------------------------

--PROCEDURE Selecionar_Livro
CREATE PROCEDURE Selecionar_Livro
AS
BEGIN
    
    SELECT * FROM Livro;
END

EXEC Selecionar_Livro;

-----------------------------------------
-----PROCEDURE Selecionar_Livro ComParametros
CREATE PROCEDURE Selecionar_LivroComParametros
    @Parametro1 VARCHAR(20)
    
AS
BEGIN
    
    SELECT * FROM Livro WHERE ISBN = @Parametro1;
END


EXEC Selecionar_LivroComParametros @Parametro1 = 9788535920400;


--procedure inserção
-----------------------------------------
-- Criação de uma stored procedure para inserir uma nova categoria
CREATE PROCEDURE InserirCategoria
  @ID INT,
  @Nome VARCHAR(50)
AS
BEGIN
  INSERT INTO Categoria (ID, Nome)
  VALUES (@ID, @Nome)
END

--executar procedure InserirCategoria
EXEC InserirCategoria @ID =10,  @Nome ='novoartelingua';
-------------------
--delete from  Categoria
--where ID =10 and Nome ='novoartelingua';
--------------------------

--Criação de uma stored procedure para inserir uma Publicacao
CREATE PROCEDURE InserirPublicacao
  @ISBN VARCHAR(20),
  @Tipo VARCHAR(10)
AS
BEGIN
  INSERT INTO Publicacao (ISBN, Tipo)
  VALUES (@ISBN, @Tipo)
END
--Stored Procedure para inserir um novo livro
CREATE PROCEDURE InserirLivro
  @ISBN VARCHAR(20),
  @CategoriaID INT,
  @Titulo VARCHAR(100),
  @AnoPublicacao INT,
  @Editora VARCHAR(100),
  @N_Exemplar INT,
  @N_Exemplar_Emprestado INT
AS
BEGIN
  INSERT INTO Livro (ISBN, CategoriaID, Titulo, AnoPublicacao, Editora, N_Exemplar, N_Exemplar_Emprestado)
  VALUES (@ISBN, @CategoriaID, @Titulo, @AnoPublicacao, @Editora, @N_Exemplar, @N_Exemplar_Emprestado)
END
--Stored Procedure para inserir uma nova reserva
CREATE PROCEDURE InserirReserva
  @ID INT,
  @UsuarioID INT,
  @PublicacaoISBN VARCHAR(20),
  @DataReserva DATE
AS
BEGIN
  INSERT INTO Reserva (ID, UsuarioID, PublicacaoISBN, DataReserva)
  VALUES (@ID, @UsuarioID, @PublicacaoISBN, @DataReserva)
END

--Stored Procedure para inserir uma nova devolução
CREATE PROCEDURE InserirDevolucao
  @EmprestimoID INT,
  @DataDevolucao DATE
AS
BEGIN
  INSERT INTO Devolucao (EmprestimoID, DataDevolucao)
  VALUES (@EmprestimoID, @DataDevolucao)
END


