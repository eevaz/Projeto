USE SGDB
CREATE PROCEDURE Selecionar_LivroComParametros
    @Parametro1 VARCHAR(20)
    
AS
BEGIN
    
    SELECT * FROM Livro WHERE ISBN = @Parametro1;
END


EXEC Selecionar_LivroComParametros @Parametro1 = 9788535920400;

SELECT * FROM Categoria   
SELECT * FROM Publicacao

SELECT * FROM Livro
WHERE ISBN = 9788530939755