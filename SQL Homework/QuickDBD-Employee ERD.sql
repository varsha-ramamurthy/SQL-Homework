-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/wTqACO
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Database: ph_hw_db
-- DROP DATABASE ph_hw_db;
-- create employees table

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "birth_date" VARCHAR(30)   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "gender" VARCHAR(1)   NOT NULL,
    "hire_date" VARCHAR(30)   NOT NULL
);

-- create departments table
CREATE TABLE "departments" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL
);

-- create dept_emp table
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(4)   NOT NULL,
    "from_date" VARCHAR(30)   NOT NULL,
    "to_date" VARCHAR(30)   NOT NULL
);

-- create dept_manager table
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_date" VARCHAR(30)   NOT NULL,
    "to_date" VARCHAR(30)   NOT NULL
);

-- create salaries table
CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" VARCHAR(30)   NOT NULL,
    "to_date" VARCHAR(30)   NOT NULL
);

-- create titles table
CREATE TABLE "titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    "from_date" VARCHAR(30)   NOT NULL,
    "to_date" VARCHAR(30)   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

