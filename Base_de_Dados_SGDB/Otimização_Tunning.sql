USE SGDB;

SELECT e.ID
FROM Estudante e, Usuario u
where u.ID = 2001 and e.UsuarioID =u.ID

