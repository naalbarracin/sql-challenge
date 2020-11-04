-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/COSx7s
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "departments" (
    "dept_no" varchar (4000)   NOT NULL,
    "dept_name" varchar(4000)    NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

DROP TABLE departmentemployee;

CREATE TABLE "departmentemployee" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(4000)    NOT NULL
);

CREATE TABLE "departmentmanager" (
    "dept_no" varchar(4000)    NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "employees" (
    "em" int   NOT NULL,
    "emp_title" varchar(4000)    NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(4000)    NOT NULL,
    "last_name" varchar(4000)    NOT NULL,
    "sex" varchar(4000)    NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "em"
     )
);

CREATE TABLE "salaries" (
    "sa" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "sa"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar(4000)    NOT NULL,
    "title" varchar(4000)    NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "departmentemployee" ADD CONSTRAINT "fk_departmentemployee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "departmentmanager" ADD CONSTRAINT "fk_departmentmanager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "departmentemployee" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_em" FOREIGN KEY("em")
REFERENCES "departmentemployee" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

CREATE INDEX "idx_departments_dept_name"
ON "departments" ("dept_name");

