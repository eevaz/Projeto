USE SGDB;
SELECT * FROM Livro
 order by CategoriaID asc  



--apresentar lista de livro com o nome das categorias e nome dos autores
select l.isbn,l.Categoria, l.titulo, l.AnoPublicacao, l.editora,l.Autor , l.n_exemplar, l.n_exemplar_emprestado from  livro l
 order by l.CategoriaID asc 

 --apresentar lista de Revista com o nome das categorias 
  select r.isbn,r.Categoria, r.titulo, r.AnoPublicacao, r.editora, r.Numero, r.n_exemplar, r.n_exemplar_emprestado from  Revista r
 order by r.CategoriaID asc

 
--apresentar lista de Artigo com o nome das categorias 
 select isbn, a.Categoria, titulo, AnoPublicacao, Arbitro, n_exemplar, n_exemplar_emprestado from  artigo a
order by a.CategoriaID asc


 --update categoria de Artigo
update Artigo set Categoria = 'Generalidades' 
where CategoriaID = 1

update Artigo set Categoria = 'Filosofia' 
where CategoriaID = 2
update Artigo set Categoria = 'Religi�o' 
where CategoriaID = 3
update Artigo set Categoria = 'Ci�ncias Sociais' 
where CategoriaID = 4
update Artigo set Categoria = 'Filologia' 
where CategoriaID = 5
update Artigo set Categoria = 'Ci�ncias naturais' 
where CategoriaID = 6
update Artigo set Categoria = 'Ci�ncias T�cnicas e Pr�ticas' 
where CategoriaID = 7
update Artigo set Categoria = 'Arte e Literatura' 
where CategoriaID = 8
update Artigo set Categoria = 'Hist�ria' 
where CategoriaID = 9







 --update ategoria de Revista
update Revista set Categoria = 'Generalidades' 
where CategoriaID = 1

update Revista set Categoria = 'Filosofia' 
where CategoriaID = 2
update Revista set Categoria = 'Religi�o' 
where CategoriaID = 3
update Revista set Categoria = 'Ci�ncias Sociais' 
where CategoriaID = 4
update Revista set Categoria = 'Filologia' 
where CategoriaID = 5
update Revista set Categoria = 'Ci�ncias naturais' 
where CategoriaID = 6
update Revista set Categoria = 'Ci�ncias T�cnicas e Pr�ticas' 
where CategoriaID = 7
update Revista set Categoria = 'Arte e Literatura' 
where CategoriaID = 8
update Revista set Categoria = 'Hist�ria' 
where CategoriaID = 9








 --update autor de livro
 update Livro set Autor = 'Charles Duhigg' 
where CategoriaID = 1
update Livro set Autor = 'Jostein Gaarder' 
where CategoriaID = 2
update Livro set Autor = 'James C. Hunter' 
where CategoriaID = 3
update Livro set Autor = 'Yuval Noah Harari' 
where CategoriaID = 4
update Livro set Autor = 'George Orwell' 
where CategoriaID = 5
update Livro set Autor = 'Stephen Hawking' 
where CategoriaID = 6
update Livro set Autor = 'Malcolm Gladwell' 
where CategoriaID = 7
update Livro set Autor = 'Miguel de Cervantes' 
where CategoriaID = 8
update Livro set Autor = 'Charles C. Mann' 
where CategoriaID = 9




  ----Autores dos livros
  INSERT INTO Autor (ID, Nome)
VALUES
(1101, 'Charles Duhigg'),
(1102, 'Jostein Gaarder'),
(1103, 'James C. Hunter'),
(1104, 'Yuval Noah Harari'),
(1105, 'George Orwell'),
(1106, 'Stephen Hawking'),
(1107, 'Malcolm Gladwell'),
(1108, 'Miguel de Cervantes'),
(1109, 'Charles C. Mann');

 --update categoria de livro
update Livro set Categoria = 'Generalidades' 
where CategoriaID = 1

update Livro set Categoria = 'Filosofia' 
where CategoriaID = 2
update Livro set Categoria = 'Religi�o' 
where CategoriaID = 3
update Livro set Categoria = 'Ci�ncias Sociais' 
where CategoriaID = 4
update Livro set Categoria = 'Filologia' 
where CategoriaID = 5
update Livro set Categoria = 'Ci�ncias naturais' 
where CategoriaID = 6
update Livro set Categoria = 'Ci�ncias T�cnicas e Pr�ticas' 
where CategoriaID = 7
update Livro set Categoria = 'Arte e Literatura' 
where CategoriaID = 8
update Livro set Categoria = 'Hist�ria' 
where CategoriaID = 9

--INSERT INTO Livro (Categoria)
--VALUES
--  ('Generalidades',Where CategoriaID= 1);
--  ('Filosofia'),
--  ('Religi�o'),
--  ('Ci�ncias Sociais'),
--  ('Filologia'),
--  ('Ci�ncias naturais'),
--  ('Ci�ncias T�cnicas e Pr�ticas'),
--  ('Arte e Literatura'),
--  ('Hist�ria');


-- Inser��o das categorias na tabela Categoria
INSERT INTO Categoria (ID, Nome)
VALUES
  (1, 'Generalidades'),
  (2, 'Filosofia'),
  (3, 'Religi�o'),
  (4, 'Ci�ncias Sociais'),
  (5, 'Filologia'),
  (6, 'Ci�ncias naturais'),
  (7, 'Ci�ncias T�cnicas e Pr�ticas'),
  (8, 'Arte e Literatura'),
  (9, 'Hist�ria');
  SELECT * FROM Livro
  SELECT * FROM Revista
  -------------------------------------------------
-------------PUBLICA��O_Categoria--------------------
-------------------------------------------------
-- Inser��o da tabela Publicacao_Categoria (Livro)
INSERT INTO Publicacao_Categoria (PublicISBN, CategID)
VALUES
('9788535920400', 1), 
('9788530939755', 2), 
('9788573256139', 3), 
('9788535921063', 4), 
('9788535932820', 5), 
('9788533936642', 6), 
('9788525066262', 7), 
('9788539004116', 8), 
('9788556510170', 9); 



-- Inser��o da tabela Publicacao_Categoria (Revista)
INSERT INTO Publicacao_Categoria (PublicISBN, CategID)
VALUES
('9788535919510', 1), 
('9788535919511', 2), 
('9788535919512', 3),
('9788535919513', 4),
('9788535919514', 5), 
('9788535919515', 6), 
('9788535919516', 7), 
('9788535919517', 8), 
('9788535919518', 9); 

-- Inser��o da tabela Publicacao_Categoria (Artigo)
INSERT INTO Publicacao_Categoria (PublicISBN, CategID)
VALUES
('9788535944151', 1), 
('9788535944152', 2), 
('9788535944153', 3), 
('9788535944154', 4), 
('9788535944155', 5), 
('9788535944156', 6), 
('9788535944157', 7),
('9788535944158', 8), 
('9788535944159', 9); 

  -----------------------------------------
  ---------Inser��o de PUBLICACAO---------
  -----------------------------------------

  -- Inser��o dos livros na tabela Publicacao
INSERT INTO Publicacao (ISBN, Tipo)
VALUES
('9788535920400', 'Livro'),
('9788530939755', 'Livro'),
('9788573256139', 'Livro'),
('9788535921063', 'Livro'),
('9788535932820', 'Livro'),
('9788533936642', 'Livro'),
('9788525066262', 'Livro'),
('9788539004116', 'Livro'),
('9788556510170', 'Livro');

-- Inser��o das revistas na tabela Publicacao
INSERT INTO Publicacao (ISBN, Tipo)
VALUES
('9788535919510', 'Revista'),
('9788535919511', 'Revista'),
('9788535919512', 'Revista'),
('9788535919513', 'Revista'),
('9788535919514', 'Revista'),
('9788535919515', 'Revista'),
('9788535919516', 'Revista'),
('9788535919517', 'Revista'),
('9788535919518', 'Revista');

-- Inser��o dos artigos na tabela Publicacao
INSERT INTO Publicacao (ISBN, Tipo)
VALUES
('9788535944151', 'Artigo'),
('9788535944152', 'Artigo'),
('9788535944153', 'Artigo'),
('9788535944154', 'Artigo'),
('9788535944155', 'Artigo'),
('9788535944156', 'Artigo'),
('9788535944157', 'Artigo'),
('9788535944158', 'Artigo'),
('9788535944159', 'Artigo');

-------------------------------------------------------------
-- Inser��o dos livros na tabela Livro
INSERT INTO Livro (ISBN, CategoriaID, Titulo, AnoPublicacao, Editora, N_Exemplar, N_Exemplar_Emprestado)
VALUES
  ('9788535920400', 1, 'O Poder do H�bito', 2012, 'Objetiva',11,2),
  ('9788530939755', 2, 'O Mundo de Sofia', 1995, 'Companhia das Letras',11,3),
  ('9788573256139', 3, 'O Monge e o Executivo', 2004, 'Sextante',11,0),
  ('9788535921063', 4, 'Sapiens: Uma Breve Hist�ria da Humanidade', 2015, 'L&PM Editores',11,2),
  ('9788535932820', 5, '1984', 1949, 'Companhia das Letras',11,2),
  ('9788533936642', 6, 'Uma Breve Hist�ria do Tempo', 1988, 'Intr�nseca',11,0),
  ('9788525066262', 7, 'O Ponto da Virada', 2000, 'Cultrix',11,0),
  ('9788539004116', 8, 'Dom Quixote', 1605, 'Zahar',11,0),
  ('9788556510170', 9, '1491: Uma Nova Hist�ria da Am�rica Antes de Colombo', 2005, 'Objetiva',11,0);

  ------------------------------------
   -- Inser��o das revistas na tabela Revista
  INSERT INTO Revista (ISBN, CategoriaID, Titulo, Editora, AnoPublicacao, Numero, N_Exemplar, N_Exemplar_Emprestado)
VALUES
  ('9788535919510', 1, 'National Geographic', 'National Geographic Society', 1888, 01,10,0),
  ('9788535919511', 2, 'Philosophical Review', 'Duke University Press', 1892, 02,10,3),
  ('9788535919512', 3, 'Christianity Today', 'Christianity Today International', 1956, 03,10,0),
  ('9788535919513', 4, 'Social Forces', 'Oxford University Press', 1922, 04,10,0),
  ('9788535919514', 5, 'Modern Philology', 'University of Chicago Press', 1903, 05,10,1),
  ('9788535919515', 6, 'Scientific American', 'Springer Nature', 1845, 06,10,0),
  ('9788535919516', 7, 'Popular Mechanics', 'Hearst Communications', 1902, 07,10,0),
  ('9788535919517', 8, 'Artforum', 'Artforum International Magazine', 1962, 08,10,0),
  ('9788535919518', 9, 'History Today', 'History Today Ltd.', 1951, 09,10,0);
  ----------------------------------
    -- Inser��o dos Artigos na tabela Artigo
INSERT INTO Artigo (ISBN, CategoriaID, Titulo, AnoPublicacao, Arbitro, N_Exemplar, N_Exemplar_Emprestado)
VALUES
  ('9788535944151', 1, 'A Import�ncia da Leitura', 2010, 'John Smith',9,1),
  ('9788535944152', 2, 'A �tica do Utilitarismo', 2005, 'Jane Doe',9,0),
  ('9788535944153', 3, 'O Papel da Ora��o na Vida Espiritual', 2018, 'Michael Johnson',9,0),
  ('9788535944154', 4, 'Impacto das M�dias Sociais na Sociedade', 2014, 'Emily Davis',9,2),
  ('9788535944155', 5, 'An�lise Lingu�stica de um Poema Cl�ssico', 2009, 'Robert Wilson',9,0),
  ('9788535944156', 6, 'A Influ�ncia do Clima nas Migra��es de Aves', 2016, 'Maria Garcia',9,0),
  ('9788535944157', 7, 'Tend�ncias Tecnol�gicas para o Futuro', 2022, 'David Thompson',9,0),
  ('9788535944158', 8, 'A Simbologia nas Obras de Shakespeare', 2011, 'Samantha Brown',9,0),
  ('9788535944159', 9, 'A Revolu��o Industrial e suas Consequ�ncias', 2007, 'Daniel Wilson',9,0);
-------------------------------------------------
-------------------AUTOR--------------------
-------------------------------------------------
    -- Inser��o dos autores na tabela Autor
 ----Autores dos livros
  INSERT INTO Autor (ID, Nome)
VALUES
(1101, 'Charles Duhigg'),
(1102, 'Jostein Gaarder'),
(1103, 'James C. Hunter'),
(1104, 'Yuval Noah Harari'),
(1105, 'George Orwell'),
(1106, 'Stephen Hawking'),
(1107, 'Malcolm Gladwell'),
(1108, 'Miguel de Cervantes'),
(1109, 'Charles C. Mann');

----Autores das revistas
  INSERT INTO Autor (ID, Nome)
VALUES
(1110, 'National Geographic Society'),
(1111, 'Duke University Press'),
(1112, 'Christianity Today International'),
(1113, 'Oxford University Press'),
(1114, 'University of Chicago Press'),
(1115, 'Springer Nature'),
(1116, 'Hearst Communications'),
(1117, 'Artforum International Magazine'),
(1118, 'History Today Ltd.');

----Autores das artigo
INSERT INTO Autor (ID, Nome)
VALUES
(1119, 'John Smith'),
(1120, 'Jane Doe'),
(1121, 'Michael Johnson'),
(1122, 'Emily Davis'),
(1123, 'Robert Wilson'),
(1124, 'Maria Garcia'),
(1125, 'David Thompson'),
(1126, 'Samantha Brown'),
(1127, 'Daniel Wilson');

-------------------------------------------------
-------------PUBLICA��O_AUTOR--------------------
-------------------------------------------------
-- Inser��o da tabela Publicacao_Autor (Livro)
INSERT INTO Publicacao_Autor (PublicacaoISBN, AutorID)
VALUES
('9788535920400', 1101), -- Livro: O Poder do H�bito, Autor: Charles Duhigg
('9788530939755', 1102), -- Livro: O Mundo de Sofia, Autor: Jostein Gaarder
('9788573256139', 1103), -- Livro: O Monge e o Executivo, Autor: James C. Hunter
('9788535921063', 1104), -- Livro: Sapiens: Uma Breve Hist�ria da Humanidade, Autor: Yuval Noah Harari
('9788535932820', 1105), -- Livro: 1984, Autor: George Orwell
('9788533936642', 1106), -- Livro: Uma Breve Hist�ria do Tempo, Autor: Stephen Hawking
('9788525066262', 1107), -- Livro: O Ponto da Virada, Autor: Malcolm Gladwell
('9788539004116', 1108), -- Livro: Dom Quixote, Autor: Miguel de Cervantes
('9788556510170', 1109); -- Livro: 1491: Uma Nova Hist�ria da Am�rica Antes de Colombo, Autor: Charles C. Mann

-- Inser��o da tabela Publicacao_Autor (Revista)
INSERT INTO Publicacao_Autor (PublicacaoISBN, AutorID)
VALUES
('9788535919510', 1110), -- Revista: National Geographic, Autor: National Geographic Society
('9788535919511', 1111), -- Revista: Philosophical Review, Autor: Duke University Press
('9788535919512', 1112), -- Revista: Christianity Today, Autor: Christianity Today International
('9788535919513', 1113), -- Revista: Social Forces, Autor: Oxford University Press
('9788535919514', 1114), -- Revista: Modern Philology, Autor: University of Chicago Press
('9788535919515', 1115), -- Revista: Scientific American, Autor: Springer Nature
('9788535919516', 1116), -- Revista: Popular Mechanics, Autor: Hearst Communications
('9788535919517', 1117), -- Revista: Artforum, Autor: Artforum International Magazine
('9788535919518', 1118); -- Revista: History Today, Autor: History Today Ltd.

-- Inser��o da tabela Publicacao_Autor (Artigo)
INSERT INTO Publicacao_Autor (PublicacaoISBN, AutorID)
VALUES
('9788535944151', 1119), -- Artigo: "A Import�ncia da Leitura", Autor: John Smith
('9788535944152', 1120), -- Artigo: "A �tica do Utilitarismo", Autor: Jane Doe
('9788535944153', 1121), -- Artigo: "O Papel da Ora��o na Vida Espiritual", Autor: Michael Johnson
('9788535944154', 1122), -- Artigo: "Impacto das M�dias Sociais na Sociedade", Autor: Emily Davis
('9788535944155', 1123), -- Artigo: "An�lise Lingu�stica de um Poema Cl�ssico", Autor: Robert Wilson
('9788535944156', 1124), -- Artigo: "A Influ�ncia do Clima nas Migra��es de Aves", Autor: Maria Garcia
('9788535944157', 1125), -- Artigo: "Tend�ncias Tecnol�gicas para o Futuro", Autor: David Thompson
('9788535944158', 1126), -- Artigo: "A Simbologia nas Obras de Shakespeare", Autor: Samantha Brown
('9788535944159', 1127); -- Artigo: "A Revolu��o Industrial e suas Consequ�ncias", Autor: Daniel Wilson
----------------------------------------------------------
------------------USUARIO----------------------------
----------------------------------------------------------
 -- Inser��o dos usuarios na tabela Usuario
-- Inser��o de usu�rios estudantes
INSERT INTO Usuario (ID, TipoUsuario, Nome, Email, Telefone, Morada)
VALUES
(2001, 'Estudante', 'Jo�o Silva', 'joao.silva@gmail.com', '9876551', 'Achada Santo Ant�nio'),
(2002, 'Estudante', 'Maria Santos', 'maria.santos@gmail.com', '9876552', 'Achadinha'),
(2003, 'Estudante', 'Pedro Almeida', 'pedro.almeida@gmail.com', '9876553', 'Achada Eug�nio Lima'),
(2004, 'Estudante', 'Ana Oliveira', 'ana.oliveira@gmail.com', '9876554', 'Achada Grande Frente'),
(2005, 'Estudante', 'Rafaela Costa', 'rafaela.costa@gmail.com', '9876555', 'Achada Grande Tr�s'),
(2006, 'Estudante', 'Daniel Pereira', 'daniel.pereira@gmail.com', '9876556', 'Achada Mato'),
(2007, 'Estudante', 'Carolina Santos', 'carolina.santos@gmail.com', '9876557', 'Achada S�o Filipe'),
(2008, 'Estudante', 'Guilherme Ferreira', 'guilherme.ferreira@gmail.com', '9876558', 'Bela Vista'),
(2009, 'Estudante', 'L�cia Sousa', 'lucia.sousa@gmail.com', '9876559', 'L�m Cachorro'),
(2010, 'Estudante', 'Fernando Mendes', 'fernando.mendes@gmail.com', '9876560', 'Vila Nova');
-- Inser��o de usu�rios trabalhadores
INSERT INTO Usuario (ID, TipoUsuario, Nome, Email, Telefone, Morada)
VALUES
(2011, 'Trabalhador', 'Andr� Costa', 'andre.costa@gmail.com', '9876541', 'Achada Santo Ant�nio'),
(2012, 'Trabalhador', 'Mariana Santos', 'mariana.santos@gmail.com', '9876542', 'Achadinha'),
(2013, 'Trabalhador', 'Ricardo Pereira', 'ricardo.pereira@gmail.com', '9876543', 'Achada Eug�nio Lima'),
(2014, 'Trabalhador', 'Sofia Fernandes', 'sofia.fernandes@gmail.com', '9876544', 'Achada Eug�nio Lima'),
(2015, 'Trabalhador', 'Gustavo Silva', 'gustavo.silva@gmail.com', '9876545', 'Achada Grande Frente'),
(2016, 'Trabalhador', 'Isabel Santos', 'isabel.santos@gmail.com', '9876546', 'Achada Grande Frente');
delete from Usuario 
where ID =2016
----------------------------------------
-- Inser��o dos estudantes na tabela Estudante
 INSERT INTO Estudante (ID, UsuarioID, NomeDaEscola)
VALUES

(2101, 2001,  'Universidade de Cabo Verde'),
(2102, 2002,  'Universidade Jean Piaget de Cabo Verde'),
(2103, 2003,  'Universidade Lus�fona de Cabo Verde'),
(2104, 2004,  'Universidade de Santiago'),
(2105, 2005,  'Liceu Domingos Ramos'),
(2106, 2006,  'Liceu Jos� Augusto Pinto'),
(2107, 2007,  'Liceu Am�lcar Cabral'),
(2108, 2008,  'Liceu Ludgero Lima'),
(2109, 2009,  'Escola Secund�ria Ab�lio Duarte'),
(2110, 2010,  'Escola Secund�ria Pedro Gomes');
delete from Estudante 
where ID =2111
------------------------------------
  
  -- Inser��o dos trabalhadores na tabela Trabalhador
INSERT INTO Trabalhador (ID, UsuarioID, Cargo, CentroDeTrabalho)
VALUES

(2201, 2011,  'Gerente de Contas', 'Banco do Cabo Verde'),
(2202, 2012,  'Analista de Cr�dito', 'Banco do Cabo Verde'),
(2203, 2013,  'Caixa Banc�rio', 'Banco do Cabo Verde'),
(2204, 2014,  'M�dico Cl�nico Geral', 'Hospital Agostinho Neto'),
(2205, 2015, 'Enfermeiro de Cuidados Intensivos', 'Hospital Agostinho Neto'),
(2206, 2016, 'T�cnico de Radiologia', 'Hospital Agostinho Neto');
delete from Trabalhador 
where ID =2206
--------------------------------------
--------------EMPRESTIMO--------------
--------------------------------------

-- Inser��o emprestimos na tabela Emprestimo

INSERT INTO Emprestimo (ID, UsuarioID, PublicacaoISBN, DataEmprestimo, DataDevolucao)
VALUES

-- Inser��o emprestimos de livros
(3301, 2001, '9788535920400', '2023-06-24', '2023-07-01'),
(3302, 2002, '9788535920400', '2023-06-25', '2023-07-02'),
(3303, 2003, '9788530939755', '2023-06-26', '2023-07-03'),
(3304, 2003, '9788530939755', '2023-06-27', '2023-07-04'),
(3305, 2003, '9788530939755', '2023-06-28', '2023-07-05'),
(3306, 2004, '9788535921063', '2023-06-29', '2023-07-06'),
(3307, 2005, '9788535921063', '2023-06-30', '2023-07-07'),
(3308, 2006, '9788535932820', '2023-07-01', '2023-07-08'),
(3309, 2007, '9788535932820', '2023-07-02', '2023-07-09'),

-- Inser��o empr�stimos de revistas
(3310, 2011, '9788539004116', '2023-07-03', '2023-07-10'),
(3311, 2012, '9788535919511', '2023-07-04', '2023-07-11'),
(3312, 2013, '9788535919514', '2023-07-06', '2023-07-13'),

-- Inser��o empr�stimos de artigo
(3313, 2014, '9788535944151', '2023-07-07', '2023-07-14'),
(3314, 2015, '9788535944154', '2023-07-08', '2023-07-15'),
(3315, 2016, '9788535944154', '2023-07-09', '2023-07-16');
delete from emprestimo 
where ID =3315
--------------------------------------------------------
-- ESTUDANTE_EMPRESTIMO
-- Inser��o na tabela Estudante_Emprestimo
INSERT INTO Estudante_Emprestimo ( ID, EstudanteID, EmprestimoID)
VALUES
(3401, 2101, 3301),
(3402, 2102, 3302),
(3403, 2103, 3303),
(3404, 2103, 3304),
(3405, 2103, 3305),
(3406, 2104, 3306),
(3407, 2105, 3307),
(3408, 2106, 3308),
(3409, 2107, 3309);
---------------------------------------------------------
-- TRABALHADOR_EMPRESTIMO
-- Inser��o na tabela Trabalhador_Emprestimo
INSERT INTO Trabalhador_Emprestimo (ID, TrabalhadorID, EmprestimoID)
VALUES

-- Inser��o dos registros de empr�stimo feitos por trabalhadores
(3501, 2201, 3310),
(3502, 2202, 3311),
(3503, 2203, 3312),
(3504, 2204, 3313),
(3505, 2205, 3314),
(3506, 2206, 3315);
delete from Trabalhador_Emprestimo 
where ID =3506
-------------------------------------
-------FUNCIONARIO-----------------
-------------------------------------

-- Inser��o de funcion�rios na tabela Funcionario
INSERT INTO Funcionario (ID, Nome, Cargo)
VALUES
(111, 'Ana Silva', 'Bibliotec�ria'),
(222, 'Pedro Santos', 'Auxiliar de Biblioteca'),
(333, 'Marta Oliveira', 'Respons�vel pelo Acervo'),
(444, 'Ricardo Mendes', 'Atendente de Informa��es');

-------------------------------------
--------FUNCIONARIO_EMPRESTIMO
-------------------------------------
-- Inser��o dos registros na tabela Funcionario_Emprestimo
INSERT INTO Funcionario_Emprestimo (ID, FuncionarioID, EmprestimoID)
VALUES

-- Inser��o dos registros de empr�stimo feitos por funcion�rios
(4001, 111, 3301),
(4002, 222, 3302),
(4003, 333, 3303),
(4004, 333, 3304),
(4005, 333, 3305),
(4006, 444, 3306),
(4007, 444, 3307),
(4008, 444, 3308),
(4009, 444, 3309),
(4010, 111, 3310),
(4011, 222, 3311),
(4012, 333, 3312),
(4013, 444, 3313),
(4014, 444, 3314),
(4015, 444, 3315);
delete from Funcionario_Emprestimo 
where ID =4015
------------------------------
------------RESERVA-------
-----------------------------
-- Inser��o de reservas na tabela Reserva
INSERT INTO Reserva (ID,UsuarioID, PublicacaoISBN, DataReserva)
VALUES

(5001,2007, '9788535920400', '2023-07-06'),
(5002,2008, '9788535920400', '2023-07-06'),
(5003,2009, '9788530939755', '2023-07-06'),
(5004,2010, '9788530939755', '2023-07-06');
-------------------------------------
--------FUNCIONARIO_RESERVA-----------
-------------------------------------
-- Inser��o na tabela Funcionario_Reserva
INSERT INTO Funcionario_Reserva (ID, FuncionarioID, ReservaID)
VALUES
(6001, 444, 5001),
(6002, 444, 5002),
(6003, 444, 5003),
(6004, 444, 5004);
-------------------------------------
--------------DEVOLUCAO----------
-------------------------------------

-- Inser��o na tabela Devolucao
INSERT INTO Devolucao (EmprestimoID, DataDevolucao)
VALUES
(3301, '2023-07-01'),
(3302, '2023-07-02'),
(3303, '2023-07-03'),
(3304, '2023-07-04'),
(3305, '2023-08-04');
-------------------------------------
----------FUNCIONARIO_DEVOLUCAO------
-------------------------------------
-- Inser��o na tabela Funcionario_Devolucao
INSERT INTO Funcionario_Devolucao (ID, FuncionarioID, DevolucaoID)
VALUES
(7001, 333, 1),
(7002, 333, 2),
(7003, 333, 3),
(7004, 333, 4);
--UPDATE  Funcionario_Devolucao
--SET DevolucaoID = 4
--WHERE ID=7004
-------------------------------------
-------------MULTA------------------
-------------------------------------

INSERT INTO Multa (ID,Valor, UsuarioID, FuncionarioID, PublicacaoISBN, DataAplicacao)
VALUES
(8001,200, 2007,111, '9788535932820','2023-07-12'),
(8002,1000, 2016, 111, '9788535944154','2023-07-30'),
(8003,50, 2002, 111, '9788535920400','2023-07-04');

-------------------------------------
-------------NOTIFICA��ES------------
-------------------------------------
INSERT INTO Notificacao (UsuarioID, FuncionarioID, PublicacaoISBN, TipoNotificacao, DataNotificacao)
VALUES
(2002,222,'9788535920400', 'Aviso de Prazo de Devolu��o', '2023-07-1'),
(2009,222,'9788530939755', 'Reserva de Publica��o', '2023-07-13'),
(2016,222,'9788535944154', 'Aviso de Multa', '2023-07-20');

--Aviso de prazo de devolu��o:

--Tipo de notifica��o: "Aviso de Prazo de Devolu��o"
--Descri��o: Informa ao usu�rio que o prazo de devolu��o da publica��o est� quase chegando ao fim e lembra-o de devolv�-la dentro do prazo estipulado.
--Reserva de publica��o:

--Tipo de notifica��o: "Reserva de Publica��o"
--Descri��o: Notifica o usu�rio de que a publica��o que ele solicitou anteriormente foi reservada com sucesso e est� dispon�vel para retirada na biblioteca.
--Aviso de multa:

--Tipo de notifica��o: "Aviso de Multa"
--Descri��o: Informa ao usu�rio que uma multa foi aplicada devido a atraso na devolu��o de uma publica��o e fornece os detalhes sobre o valor da multa e a data de aplica��o.