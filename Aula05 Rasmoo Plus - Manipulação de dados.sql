
----- Alimentando a tabela do tipo de usuário:
INSERT INTO user_type VALUES(null, 'ALUNO', null);
INSERT INTO user_type VALUES(null, 'PROFESSOR', null);
INSERT INTO user_type VALUES(null, 'ADMINISTRADOR', null);


-- Alimentando a tabela do tipo de inscrição: 
INSERT INTO subscription_type(name, acess_days) VALUES('Java Path', 120);
INSERT INTO subscription_type(name, acess_days) VALUES('Javascript Path', 60);
INSERT INTO subscription_type(name, acess_days) VALUES('Full Stack Path', 90);
INSERT INTO subscription_type(name, acess_days) VALUES('Data Engineering Path', 150);
INSERT INTO subscription_type(name, acess_days) VALUES('Devops Engineer Path', 180);
INSERT INTO subscription_type(name, acess_days) VALUES('Mobile Developer Path', 365);


-- Alimentando a tabela de usuários:
INSERT INTO users(name, email, phone, cpf, user_type_id) VALUES
('Ana Luisa', 'analuisa@gmail.com', '5521999999901', '11122233301', 1),
('Vanessa', 'vanessa@gmail.com', '5521999999902', '11122233302', 1),
('Marcos', 'marcos@gmail.com', '5521999999903', '11122233303', 1),
('Yuri', 'yuri@gmail.com', '5521999999906', '11122230306', 1),
('Matheus', 'matheus@gmail.com', '5521999999907', '11122233307', 1),
('Mario', 'mario@gmail.com', '5521999999908', '11122233308', 1),
('Larissa', 'larissa@gmail.com', '5521999999909', '11122233309', 1),
('Vinicios', 'vinicios@gmail.com', '5521999999910', '11122233310', 1),
('Patricia', 'patricia@gmail.com', '5521999999911', '11122233311', 1),
('Mauricio', 'mauricio@gmail.com', '5521999999912', '11122233312', 1),
('Pedro Henrique', 'pedro@gmail.com', '5521999999904', '11122233304', 2),
('Felipe', 'felipe@gmail.com', '5521999999905', '11122233355', 3),
('André', 'andrejava@gmail.com', '5583999510797', '11122233326', 3),
('Saulo', 'jr_saulo@gmail.com', '5583998527903', '11122233397', 2),
('Matheus', 'matheus_naruto@gmail.com', '5521999987905', '11122233338', 2),
('Vitoria', 'alvesvick@gmail.com', '5583999809266', '11122233369', 1),
('Paula', 'ana_paula_bv@gmail.com', '5584993804216', '11122233380', 1),
('Karen', 'ana.karen@gmail.com', '5583988267626', '11122233315', 1),
('Elder', 'elder-marcos@gmail.com', '5588988631845', '11122233316', 1),
('Mayra', 'mayra@gmail.com', '5583985625587', '11122233313', 3),
('Italo', 'italo_nobre@gmail.com', '5583999558664', '11122233314', 2);

INSERT INTO users(name, email, phone, cpf, user_type_id) VALUES
('Palloma', 'mariapalloma@gmail.com', '5587985634471', '11122233158', 2),
('Valéria', 'dantas_valeria02@gmail.com', '5583993677155', '11122233317', 2);

INSERT INTO users(name, email, phone, cpf, user_type_id) VALUES
('André', 'pedro_andre.alves@gmail.com', '5583985632401', '11122233888', 1),
('André', 'andremattias@gmail.com', '558492062471', '11147533007', 1);

INSERT INTO users(name, email, phone, cpf, user_type_id) VALUES
('Regina', 'reginacamboim_@hotmail.com.br', '5583999046913', '09351712604', 2),
('André', 'vasconcelos_andre@outlook.com.br', '5583993804211', '93678254116', 2);


-- Alimentando a tabela de cursos:
INSERT INTO courses(name, certificate_hours, dt_creation) VALUES
('HTTP Protocol', 10, CURDATE()),
('MyySQqL', 18, CURDATE()),
('Java Bsic', 20, CURDATE()),
('Java Advanced', 40, CURDATE()),
('Sping B0ot', 100, CURDATE()),
('Spring Data JPA', 25, CURDATE()),
('Spring Security', 30, CURDATE()),
('Angular Advanced', 50, CURDATE()),
('Build your backend with NodeJS', 30, CURDATE()),
('Applications with NextJS', 40, CURDATE()),
('Applications with Flutter', 60, CURDATE()),
('React Native do Zero à Loja de aplicativos', 60, CURDATE()),
('Análise de dados', 120, CURDATE()),
('Bancos de dados Relacionais - Postgresql', 60, CURDATE()),
('Bancos de dados Não Relacionais (NoSQL) - MongoDB', 30, CURDATE()),
('Docker & Kubernets Masters', 80, CURDATE());


-- Alterando registros:
UPDATE courses SET name = 'MySQL' WHERE id = 2;
UPDATE courses SET name = 'Java Basic' WHERE id = 3;
UPDATE courses SET name = 'Spring Boot' WHERE id = 5;
UPDATE courses SET name = 'Banco de dados Não Relacionais (NoSQL) - MongoDB' WHERE id = 15;
UPDATE courses SET certificate_hours = 35 WHERE id = 14;
UPDATE courses SET certificate_hours = 20 WHERE id = 15;
UPDATE users SET email = 'andrefrancelinogomes.si@gmail.com' WHERE id = 55;


-- Alimentando a tabela inscrições
INSERT INTO subscriptions(user_id, subscription_type_id, dt_subscription) VALUES
(43, 3, CURDATE());

INSERT INTO subscriptions(user_id, subscription_type_id, dt_subscription) VALUES
(44, 3, CURDATE()),
(46, 1, CURDATE()),
(50, 1, CURDATE()),
(51, 2, CURDATE());

INSERT INTO subscriptions(user_id, subscription_type_id, dt_subscription) VALUES
(59, 6, CURDATE()),
(60, 1, CURDATE()),
(61, 3, CURDATE());


-- Alimentando a tabela do relacionamento inscrições e cursos
-------- Usuários cadastrados na subscription_type id 3, Full Stack Path
INSERT INTO subscription_course(subscription_id, course_id) VALUES
(1, 3), (1, 5), (1, 4), (1, 6), (1, 7), (1, 14), (1, 1);
INSERT INTO subscription_course(subscription_id, course_id) VALUES
(11, 3), (11, 5), (11, 4), (11, 6), (11, 7), (11, 14), (11, 1),
(19, 3), (19, 5), (19, 4), (19, 6), (19, 7), (19, 14), (19, 1);
INSERT INTO subscription_course(subscription_id, course_id) VALUES
(1, 8), (11, 8), (19, 8);

-------- Usuários cadastrados na subscription_type id 1, Java Path
INSERT INTO subscription_course(subscription_id, course_id) VALUES
(12, 3), (12, 4), (12, 5), (12, 6), (12, 7),
(13, 3), (13, 4), (13, 5), (13, 6), (13, 7),
(18, 3), (18, 4), (18, 5), (18, 6), (18, 7);

-------- Usuários cadastrados na subscription_type id 2, Java Script Path
INSERT INTO subscription_course(subscription_id, course_id) VALUES
(14, 2), (14, 8), (14, 9), (14, 10), (14, 12);

-------- Usuários cadastrados na subscription_type id 6, Mobile Developer Path
INSERT INTO subscription_course(subscription_id, course_id) VALUES
(17, 11), (17, 12);

