SELECT A.Nome,L.Titulo FROM Autor A, Publicacao P, Livro L

Where A.ID =1107 and P.ISBN= 9788525066262 and L.ISBN=P.ISBN


select a.Nome, l.Titulo  from 
Livro l ,Autor a,Publicacao p
where l.ISBN=9788525066262 AND p.ISBN=l.ISBN


select * from Usuario
where Id=2012


SELECT e.ID
FROM Estudante e,  Usuario u
where  u.ID = 2001 and e.UsuarioID =u.ID ----feito
