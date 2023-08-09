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

----- Aula 06.2 - Subconsultas ----
----- Ex1: Retornar todos os usuários que tem alguma assinatura em algum curso
SELECT * FROM users
WHERE id IN (
				SELECT  user_id
                FROM subscriptions 
									);

----- Ex2: Retornar todos os usuários que sejam do tipo "ADMINISTRADOR"
SELECT * FROM users
WHERE user_type_id = (
						SELECT id FROM user_type 
						WHERE name = 'ADMINISTRADOR'
													);
----- Criando tabela backup de usuários
CREATE TABLE users_backup(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    phone VARCHAR(13),
    cpf VARCHAR(11) UNIQUE,
    user_type_id INT
);

----- Ex3: Salve na tabela backup de usuários todas as informações de todos os usuários cadastrados na tabela USERS
INSERT INTO users_backup(name, email, phone, cpf, user_type_id) (
	SELECT name, email, phone, cpf, user_type_id FROM users
    );
