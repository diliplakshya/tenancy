CREATE DATABASE IF NOT EXISTS tenancy;

USE tenancy;

CREATE TABLE IF NOT EXISTS login (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
