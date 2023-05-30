INSERT INTO actors (username, password, role_id, verified, active) 
VALUES ('superadmin', 'password', 1, 'true', 'true');

CREATE USER 'suadmin'@'127.0.0.1' IDENTIFIED BY 'suadmin';
GRANT ALL PRIVILEGES ON crm_database.* TO 'suadmin'@'127.0.0.1';