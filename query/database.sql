CREATE DATABASE crm_database;

USE crm_database;

CREATE TABLE actors (
    id bigint unsigned NOT NULL AUTO_INCREMENT,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    role_id int unsigned NOT NULL,
    verified enum('true', 'false') NOT NULL,
    active enum('true', 'false') NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id bigint unsigned NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    avatar varchar(255) NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id int unsigned NOT NULL AUTO_INCREMENT,
    role_name varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE register_approvals (
    id bigint unsigned NOT NULL AUTO_INCREMENT,
    admin_id bigint unsigned NOT NULL,
    super_admin_id bigint unsigned NOT NULL,
    status varchar(255) NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (admin_id) REFERENCES actors(id),
    FOREIGN KEY (super_admin_id) REFERENCES actors(id)
);

ALTER TABLE actors ADD FOREIGN KEY (role_id) REFERENCES roles(id);