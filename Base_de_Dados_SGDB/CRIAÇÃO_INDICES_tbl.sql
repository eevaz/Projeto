USE SGDB;

-- Não é necessário criar índices adicionais nestas TABELAS:
-- Publicacao, Autor, Publicacao_Autor, Usuario, Funcionario.


--drop INDEX idx_nome_categoria ON Categoria ;

--Tabela Categoria
--para coluna Nome
CREATE INDEX idx_categoria_nome ON Categoria (Nome);

-------------------------------------------------
-- Consulta utilizando o índice
SELECT * FROM Categoria WHERE Nome = 'Filosofia';
-------------------------------------------------

--Tabela Livro
--para coluna CategoriaID
CREATE INDEX idx_livro_categoria_id ON Livro (CategoriaID);


--para coluna ISBN
CREATE  INDEX idx_livro_isbn ON Livro  (ISBN);


--Tabela Revista
--para coluna CategoriaID
CREATE INDEX idx_revista_categoria_id ON Revista (CategoriaID);

--Tabela Artigo
--para coluna CategoriaID
CREATE INDEX idx_artigo_categoria_id ON Artigo (CategoriaID);

-------------------------------

--Tabela Estudante
--para coluna UsuarioID
CREATE INDEX idx_estudante_usuario_id ON Estudante (UsuarioID);

--Tabela Trabalhador
--para coluna UsuarioID
CREATE INDEX idx_trabalhador_usuario_id ON Trabalhador (UsuarioID);

--------------------------------------------------
SELECT * FROM Trabalhador WHERE UsuarioID = 2016;
--------------------------------------------------

--Tabela Emprestimo
--para coluna UsuarioID
CREATE INDEX idx_emprestimo_usuario_id ON Emprestimo (UsuarioID);
--para coluna PunlicacaoISBN
CREATE INDEX idx_emprestimo_publicacao_isbn ON Emprestimo (PublicacaoISBN);

--Tabela Estudante_Emprestimo
--para coluna EstudanteID
CREATE INDEX idx_estudante_emprestimo_estudante_id ON Estudante_Emprestimo (EstudanteID);
--para coluna EmprestimoID
CREATE INDEX idx_estudante_emprestimo_emprestimo_id ON Estudante_Emprestimo (EmprestimoID);

--Tabela Trabalhador_Emprestimo
--para coluna TrabalhadorID
CREATE INDEX idx_trabalhador_emprestimo_trabalhador_id ON Trabalhador_Emprestimo (TrabalhadorID);
--para coluna EmprestimoID
CREATE INDEX idx_trabalhador_emprestimo_emprestimo_id ON Trabalhador_Emprestimo (EmprestimoID);

--Tabela Funcionario_Emprestimo
--para coluna FuncionarioID
CREATE INDEX idx_funcionario_emprestimo_funcionario_id ON Funcionario_Emprestimo (FuncionarioID);
--para coluna EmprestimoID
CREATE INDEX idx_funcionario_emprestimo_emprestimo_id ON Funcionario_Emprestimo (EmprestimoID);

--Tabela Reserva
--para coluna UsuarioID
CREATE INDEX idx_reserva_usuario_id ON Reserva (UsuarioID);
--para coluna PublicacaoISBN
CREATE INDEX idx_reserva_publicacao_isbn ON Reserva (PublicacaoISBN);

--Tabela Funcionario_Reserva
--para coluna FuncionarioID
CREATE INDEX idx_funcionario_reserva_funcionario_id ON Funcionario_Reserva (FuncionarioID);
--para coluna ReservaID
CREATE INDEX idx_funcionario_reserva_reserva_id ON Funcionario_Reserva (ReservaID);

--Tabela Devolucao
--para coluna EmprestimoID
CREATE INDEX idx_devolucao_emprestimo_id ON Devolucao (EmprestimoID);

--Tabela Funcionario_Devolucao
--para coluna FuncionarioID
CREATE INDEX idx_funcionario_devolucao_funcionario_id ON Funcionario_Devolucao (FuncionarioID);
--para coluna DevolucaoID
CREATE INDEX idx_funcionario_devolucao_devolucao_id ON Funcionario_Devolucao (DevolucaoID);

--Tabela Multa
--para coluna UsuarioID
CREATE INDEX idx_multa_usuario_id ON Multa (UsuarioID);
--para coluna FuncionarioID
CREATE INDEX idx_multa_funcionario_id ON Multa (FuncionarioID);
--para coluna PublicacaoISBN
CREATE INDEX idx_multa_publicacao_isbn ON Multa (PublicacaoISBN);

--Tabela Notificacao
--para coluna UsuarioID
CREATE INDEX idx_notificacao_usuario_id ON Notificacao (UsuarioID);
--para coluna FuncionarioID
CREATE INDEX idx_notificacao_funcionario_id ON Notificacao (FuncionarioID);
--para coluna PublicacaoISBN
CREATE INDEX idx_notificacao_publicacao_isbn ON Notificacao (PublicacaoISBN);





 