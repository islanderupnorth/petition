DROP TABLE IF EXISTS signatures;

CREATE TABLE signatures (
    id SERIAL primary key,
    user_id INTEGER,
    timestamp TIMESTAMP default current_TIMESTAMP,
    signature TEXT
);

CREATE TABLE users (
    id SERIAL primary key,
    first_name VARCHAR(255) not null,
    last_name VARCHAR(255) not null,
    email VARCHAR (100) not null UNIQUE,
    Password VARCHAR (100) not null,
    timestamp TIMESTAMP default current_TIMESTAMP
);

CREATE TABLE user_profiles (
    id SERIAL primary key,
    user_id INTEGER,
    age VARCHAR (2),
    city VARCHAR (100),
    url VARCHAR (120),
    timestamp TIMESTAMP default current_TIMESTAMP
);
