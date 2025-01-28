CREATE DATABASE IF NOT EXISTS my_database;

USE my_database;

CREATE TABLE wpisy (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    wpis TEXT NOT NULL,                
    data_utworzenia_wpisu TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
