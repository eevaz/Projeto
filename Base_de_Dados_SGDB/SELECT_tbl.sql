USE SGDB;
SELECT * FROM Categoria
SELECT * FROM Publicacao	

--apresentar lista de livro com o nome das categorias e nome dos autores
select l.isbn,l.Categoria, l.titulo, l.AnoPublicacao, l.editora,l.Autor , l.n_exemplar, l.n_exemplar_emprestado from  livro l
 order by l.CategoriaID asc 

 --apresentar lista de Revista com o nome das categorias 
  select r.isbn,r.Categoria, r.titulo, r.AnoPublicacao, r.editora, r.Numero, r.n_exemplar, r.n_exemplar_emprestado from  Revista r
 order by r.CategoriaID asc

 
--apresentar lista de Artigo com o nome das categorias 
 select isbn, a.Categoria, titulo, AnoPublicacao, Arbitro, n_exemplar, n_exemplar_emprestado from  artigo a
order by a.CategoriaID asc

SELECT * FROM Usuario 
SELECT * FROM Estudante 
SELECT * FROM Trabalhador


SELECT * FROM Emprestimo
SELECT * FROM Reserva
SELECT * FROM Devolucao
SELECT * FROM Multa	
SELECT * FROM Notificacao	






























----SELECT * FROM Artigo
----where ISBN='9788535944156'
--SELECT * FROM Categoria   ----feito


--SELECT * FROM Publicacao	 ----feito	
--SELECT * FROM Publicacao_Categoria
--SELECT * FROM Livro
-- order by CategoriaID asc            ----feito
--SELECT * FROM Revista ----feito
--SELECT * FROM Artigo ----feito

--SELECT * FROM Autor ----feito

--SELECT * FROM Publicacao_Autor ----feito
-------9788525066262	Livro


--SELECT * FROM Usuario ----feito
--SELECT * FROM Estudante ----feito
--SELECT * FROM Trabalhador



--SELECT * FROM Funcionario ----feito

--SELECT * FROM Emprestimo----feito

--SELECT * FROM Reserva----feito

--SELECT * FROM Devolucao----feito

--SELECT * FROM Multa----feito	
--SELECT * FROM Notificacao----feito	





-- -- delete from Estudante
-- --where UsuarioID = 2001


-- --delete from Usuario
-- --where ID = 2017




----2001	Estudante	João Silva	joao.silva@gmail.com	9876551	Achada Santo António	202301001

--SELECT * FROM Trabalhador ----feito

--SELECT e.ID, e.UsuarioID, u.Nome, e.NomeDaEscola, u.Email, u.Telefone, u.Morada, u.CNI
--FROM Usuario u
--JOIN Estudante e ON u.ID = e.UsuarioID


--SELECT ID, TipoUsuario
--FROM Usuario 

-- SELECT t.ID, t.UsuarioID, u.Nome, t.Cargo, t.CentroDeTrabalho, u.Email, u.Telefone, u.Morada, u.CNI
-- FROM Usuario u
-- JOIN Trabalhador t ON u.ID = t.UsuarioID





----Select e.ID,u.UsuarioID, u.Nome, e.NomeDaEscola, u.Email,u.Telefone,u.Morada,u.CNI
----FROM Usuario u join Estudante e ON 
----SELECT t1.coluna1, t1.coluna2, t2.coluna3
----FROM tabela1 t1
----JOIN tabela2 t2 ON t1.colunaX = t2.colunaY


--SELECT * FROM Emprestimo ----feito

--SELECT * FROM Estudante_Emprestimo----feito
--SELECT * FROM Trabalhador_Emprestimo ----feito

--SELECT * FROM Funcionario ----feito

--SELECT * FROM Funcionario_Emprestimo ----feito

--SELECT * FROM Reserva ----feito
--SELECT * FROM Funcionario_Reserva ----feito

--SELECT * FROM Devolucao----feito
		
--SELECT * FROM Funcionario_Devolucao	----feito	

--SELECT * FROM Multa----feito	
--SELECT * FROM Notificacao----feito	

--BEGIN TRANSACTION;

--BEGIN TRY
--    -- Inserir na primeira Estudante
--    INSERT INTO Estudante(ID, UsuarioID,NomeDaEscola)"
--                + "values(?, ?, ?)";

--    -- Inserir na segunda Usuario
--    INSERT INTO Usuario(ID, tipoUsuario,Nome,Email,Telefone,Morada,CNI)"
--                + "values(?, 'Estudante', ?, ?, ?, ?, ?)";

--    -- Confirmar a transação
--    COMMIT;
--END TRY
--BEGIN CATCH
--    -- Em caso de erro, desfazer a transação
--    ROLLBACK;
--END CATCH;


----"insert into Estudante(ID, UsuarioID,NomeDaEscola)"
--         --       + "values(?, ?, ?)";



--				---lista livros

--select l.isbn,l.categoriaid, l.titulo, l.AnoPublicacao, l.editora,a.nome , l.n_exemplar, l.n_exemplar_emprestado from  livro l, autor a , Publicacao_Autor P
--where l.isbn=P.publicacaoisbn and p.autorid= a.id

--select r.isbn,r.categoriaid, r.titulo, r.AnoPublicacao, r.editora,r.Numero, r.n_exemplar, r.n_exemplar_emprestado from  Revista r, autor a , Publicacao_Autor P
--where r.isbn=P.publicacaoisbn and p.autorid= a.id
--order by r.CategoriaID asc 


--   select l.isbn,l.categoria, l.titulo, l.AnoPublicacao, l.editora,a.nome , l.n_exemplar, l.n_exemplar_emprestado from  livro l, autor a , Publicacao_Autor P
--where l.isbn=P.publicacaoisbn and p.autorid= a.id
--                    order by l.CategoriaID asc 


--select * from Artigo 
--select isbn, categoriaid, titulo, AnoPublicacao, Arbitro, n_exemplar, n_exemplar_emprestado
--                    from  artigo
--                    order by CategoriaID asc

----apresentar lista de livro com o nome das categorias e nome dos autores
--select l.isbn,l.Categoria, l.titulo, l.AnoPublicacao, l.editora,a.nome , l.n_exemplar, l.n_exemplar_emprestado from  livro l, autor a, Publicacao_Autor pa
--                    where l.isbn=pa.publicacaoisbn and pa.autorid= a.id
--                    order by l.ISBN asc 


					
----apresentar lista de Revista com o nome das categorias 
--					select r.isbn,c.Nome, r.titulo, r.AnoPublicacao, r.editora, r.Numero, r.n_exemplar, r.n_exemplar_emprestado from  Revista r, categoria c, Publicacao_Categoria pc
--                    where  r.isbn=pc.PublicISBN and pc.CategID= c.id
--                    order by r.ISBN asc

----apresentar lista de Artigo com o nome das categorias 
-- select isbn, c.Nome, titulo, AnoPublicacao, Arbitro, n_exemplar, n_exemplar_emprestado
--                    from  artigo a, categoria c, Publicacao_Categoria pc
--                    where  a.isbn=pc.PublicISBN and pc.CategID= c.id
--                    order by a.ISBN asc