-- Aula Consultas simples:

----- Retornar todos os dados dos usuários que se chamam André.
SELECT *
FROM users
WHERE name = 'André';

----- Retornar o nome, email e telefone de todos os usuários que são professores (tipo de usuário professor é o id 2)
SELECT name, email, phone
FROM users
WHERE user_type_id = 2;

----- Retornar o nome dos cursos em que a carga horária no certificado seja até 40 horas
SELECT name
FROM courses
WHERE certificate_hours <= 40;

