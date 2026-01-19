-- ==========================================================
-- Elevate Labs SQL Internship
-- Structured SQL Dump (Clean Version)
-- Database: intern_training_db
-- Table: students_v2
-- Date: 2026-01-19
-- ==========================================================


-- 1) Create Database
CREATE DATABASE IF NOT EXISTS intern_training_db;
USE intern_training_db;


-- 2) Drop table if already exists (so this script is rerunnable)
DROP TABLE IF EXISTS students_v2;


-- 3) Create Table: students_v2
CREATE TABLE students_v2 (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    dob DATE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    age INT DEFAULT NULL,
    mobile VARCHAR(15) DEFAULT NULL,
    
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email)
);


-- 4) Insert Data into students_v2
INSERT INTO students_v2 (id, name, email, dob, created_at, age, mobile) VALUES
(1, 'Vasant', 'vasant@gmail.com', '2004-08-12', '2026-01-16 11:22:51', 21, NULL),
(4, 'Rahul Sharma', 'rahulsharma@gmail.com', '2003-05-10', '2026-01-19 19:22:28', 22, NULL),
(5, 'Ananya Reddy', 'ananyareddy@gmail.com', '2002-09-15', '2026-01-19 19:22:28', 23, '9123456780'),
(6, 'Vikram Singh', 'vikramsingh@gmail.com', '2004-01-22', '2026-01-19 19:22:28', 21, NULL),
(7, 'Sneha Patel', 'snehapatel@gmail.com', '2001-12-03', '2026-01-19 19:22:28', 24, NULL),
(8, 'Aman Khan', 'amankhan@gmail.com', '2003-07-18', '2026-01-19 19:22:28', 22, NULL);


-- 5) Verification Queries
SELECT * FROM students_v2;
DESC students_v2;


-- ==========================================================
-- Notes:
-- - PRIMARY KEY ensures unique row identity.
-- - UNIQUE on email prevents duplicates.
-- - NOT NULL ensures mandatory fields are not empty.
-- - age is calculated from dob (recommended method).
-- ==========================================================
