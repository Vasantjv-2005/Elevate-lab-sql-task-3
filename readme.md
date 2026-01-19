# Elevate Labs SQL Internship - Students Table (Structured Dump)

## 📌 Overview
This repository contains a structured SQL dump and practice queries for the Elevate Labs SQL Internship.
The main goal is to build and practice SQL concepts using a `students_v2` table inside the database
`intern_training_db`.

---

## 🗄️ Database Details
- **Database Name:** `intern_training_db`
- **Table Name:** `students_v2`

---

## 🧱 Table Structure (students_v2)

| Column Name  | Data Type      | Constraints |
|------------|----------------|------------|
| id         | INT            | PRIMARY KEY, AUTO_INCREMENT |
| name       | VARCHAR(100)   | NOT NULL |
| email      | VARCHAR(150)   | NOT NULL, UNIQUE |
| dob        | DATE           | NOT NULL |
| created_at | DATETIME       | DEFAULT CURRENT_TIMESTAMP |
| age        | INT            | NULL allowed |
| mobile     | VARCHAR(15)    | NULL allowed |

---

## 🔒 Why Constraints are Used?
### ✅ PRIMARY KEY (id)
- Ensures every record is uniquely identified.
- Helps improve query performance using indexing.

### ✅ NOT NULL (name, email, dob)
- Prevents storing incomplete student records.

### ✅ UNIQUE (email)
- Ensures no duplicate emails are stored in the database.

### ✅ DEFAULT CURRENT_TIMESTAMP (created_at)
- Automatically stores the insertion timestamp.

---

## 📄 Files Included
- `intern_training_db_students_v2_structured.sql`
  - Clean structured SQL dump
  - Includes database creation, table creation, and data insertion
  - Includes verification queries (`SELECT` and `DESC`)

---

## ▶️ How to Run This Project (MySQL Workbench)
1. Open **MySQL Workbench**
2. Connect to your server (**Local instance MySQL80**)
3. Open file: `intern_training_db_students_v2_structured.sql`
4. Click ⚡ **Execute**
5. Verify output using:
   - `SELECT * FROM students_v2;`
   - `DESC students_v2;`

---

## ✅ Sample Use Cases Practiced
- WHERE clause filtering (age based filtering)
- AND / OR multiple conditions
- LIKE search using wildcards `%` and `_`
- IN and BETWEEN
- IS NULL handling
- Aliases for better readability
- Real-life email search queries

---

## 👨‍💻 Author
**Sunny**  
SQL Intern - Elevate Labs
