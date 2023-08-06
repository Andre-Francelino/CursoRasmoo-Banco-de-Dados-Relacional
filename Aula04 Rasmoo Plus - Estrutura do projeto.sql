CREATE DATABASE rasmo_plus;

USE rasmo_plus;

CREATE TABLE user_type (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR (150) NOT NULL UNIQUE,
    phone VARCHAR(13) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    user_type_id INT NOT NULL,
    FOREIGN KEY(user_type_id) REFERENCES user_type(id)
);

CREATE TABLE subscription_type (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    acess_days INT NOT NULL,
    description TEXT
);

CREATE TABLE subscriptions (
	id INT PRIMARY KEY AUTO_INCREMENT,
    dt_subscription DATE NOT NULL,
    user_id INT NOT NULL UNIQUE,
    subscription_type_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(subscription_type_id) REFERENCES subscription_type(id)
);

CREATE TABLE courses(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(120) NOT NULL,
	description TEXT,
	certificate_hours DOUBLE NOT NULL,
	dt_creation DATE NOT NULL
);

CREATE TABLE subscription_course(
	id INT PRIMARY KEY AUTO_INCREMENT,
	subscription_id INT NOT NULL,
	course_id INT NOT NULL,
	FOREIGN KEY(subscription_id) REFERENCES subscriptions(id),
	FOREIGN KEY(course_id) REFERENCES courses(id)
);

SHOW TABLES;
