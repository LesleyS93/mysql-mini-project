# Day 4 – Creating My First Database and Table

## Project Objective

The goal of today's lab was to learn the fundamentals of relational databases by creating a database, creating a table, inserting data, and retrieving information using SQL. This project is part of my Cloud Engineer transition journey using Rocky Linux 10 and MariaDB (MySQL compatible).

---

# What is a Database?

A database is an organized collection of data that allows information to be stored, managed, and retrieved efficiently. Databases are used by applications to store information such as users, products, orders, employee records, and configuration data.

In this lab, I created a database named **cloud_lab**, which serves as the container for all related tables in this project.

---

# What is a Table?

A table is a structured collection of related data within a database. It is organized into rows and columns.

* **Rows (Records):** Store individual pieces of information, such as one employee.
* **Columns (Fields):** Define the type of information stored, such as a first name, department, or salary.

For this project, I created an **employees** table to store employee information.

---

# Why Are Primary Keys Important?

A primary key uniquely identifies every row in a table.

Benefits of using a primary key include:

* Ensures every record is unique.
* Prevents duplicate identifiers.
* Improves search and query performance.
* Allows relationships to be created between multiple tables.
* Maintains data integrity within the database.

The **id** column in the employees table was configured as an **AUTO_INCREMENT PRIMARY KEY**, allowing MariaDB to automatically assign a unique ID to each employee.

---

# SQL Commands Practiced

## View Existing Databases

```sql
SHOW DATABASES;
```

Purpose:
Displays all databases available on the database server.

---

## Create a Database

```sql
CREATE DATABASE cloud_lab;
```

Purpose:
Creates a new database named **cloud_lab**.

---

## Select the Database

```sql
USE cloud_lab;
```

Purpose:
Sets **cloud_lab** as the active database for subsequent SQL commands.

---

## Create a Table

```sql
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
```

Purpose:
Creates an **employees** table with five columns to store employee information.

---

## View Tables

```sql
SHOW TABLES;
```

Purpose:
Lists all tables within the current database.

---

## Describe a Table

```sql
DESCRIBE employees;
```

Purpose:
Displays the table structure, including column names, data types, and key information.

---

## Insert Records

```sql
INSERT INTO employees (firstname, lastname, department, salary)
VALUES (...);
```

Purpose:
Adds employee records to the table.

---

## Retrieve Data

```sql
SELECT * FROM employees;
```

Purpose:
Displays all records stored in the employees table.

---

# Challenges Encountered

## Challenge

While following the original MySQL installation process, I encountered a **GPG key verification failure** when installing Oracle MySQL Community Server on Rocky Linux 10.

The package installation failed because the repository's GPG key did not match the downloaded packages.

## Resolution

To resolve the issue, I:

* Identified the Oracle MySQL Community repository.
* Backed up the repository configuration files.
* Removed the external MySQL repository.
* Cleaned the DNF package cache.
* Used the supported Rocky Linux repositories.
* Installed **MariaDB**, the default MySQL-compatible database server included with Rocky Linux.

This experience improved my understanding of Linux package management, repository configuration, GPG signature verification, and troubleshooting package installation issues.

---

# Key Skills Learned

* Rocky Linux package management using DNF
* MariaDB (MySQL compatible) installation
* Linux service management with `systemctl`
* SQL database creation
* Table creation and management
* Data insertion and retrieval
* Primary key concepts
* Git documentation practices
* Troubleshooting repository and GPG key issues

---

# Reflection

Today's lab provided a strong introduction to relational databases and SQL. I learned how databases are structured, how tables store information, and why primary keys are essential for maintaining data integrity. I also gained valuable troubleshooting experience by resolving a real package installation issue on Rocky Linux 10. These are practical skills that are directly applicable to Linux System Administration and Cloud Engineering roles.
