# Employees_SQL

## Data Modeling
Data model created with https://app.quickdatabasediagrams.com/

Code used to produce diagram/connection between tables:

Employees
-
EmployeeNumber INT pk
TitleID VARCHAR(5) FK >- Titles.TitleID
BirthDate DATE
FirstName VARCHAR(50)
LastName VARCHAR(50)
Sex CHAR(1)
HireDate DATE

Departments
-
DepartmentNumber VARCHAR(4) pk
DepartmentName VARCHAR(50)

DepartmentEmployees
-
EmployeeNumber INT pk FK >- Employees.EmployeeNumber
DepartmentNumber VARCHAR(4) pk FK >- Departments.DepartmentNumber

DepartmentManagers
-
DepartmentNumber VARCHAR(4) pk FK >- Departments.DepartmentNumber
EmployeeNumber INT pk FK >- Employees.EmployeeNumber

Salaries
-
EmployeeNumber INT pk FK >- Employees.EmployeeNumber
Salary INT

Titles
-
TitleID VARCHAR(5) pk
Title VARCHAR(50)

