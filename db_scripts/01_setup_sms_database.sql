CREATE DATABASE sms_db;
CREATE USER sms_user WITH ENCRYPTED PASSWORD 'itversity';
GRANT ALL ON DATABASE sms_db TO sms_user;

\c sms_db

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_first_name VARCHAR(30),
    user_last_name VARCHAR(30)
);

ALTER TABLE users OWNER TO sms_user;

INSERT INTO users (user_first_name, user_last_name)
VALUES ('Scott', 'Tiger'),
    ('Donald', 'Duck');
