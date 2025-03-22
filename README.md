# Employee Records Database

A structured SQL database designed to manage employee records, including departments, salaries, and job roles. Built using Microsoft SQL Server Management Studio (SSMS).  

## Features
- Structured tables: Departments, Employees, Salaries  
- SQL scripts for table creation and data insertion  
- Relational schema with foreign key constraints  
- Scalable design for future expansion  

## Project Files
- `Create_Departments.sql` – Defines the Departments table  
- `Create_Employees.sql` – Defines the Employees table  
- `Create_Salaries.sql` – Defines the Salaries table  
- `Sample_Data.sql` – Inserts test records  

## Setup Instructions
1. Open SQL Server Management Studio (SSMS).  
2. Create a new database.  
3. Run the `.sql` scripts in the following order:  
   - `Create_Departments.sql`  
   - `Create_Employees.sql`  
   - `Create_Salaries.sql`  
   - `Sample_Data.sql`  
4. Verify the data with queries like:  
   ```sql
   SELECT * FROM Employees;

### What to Do Next:  
1. Create a new file in your repo named `README.md`.  
2. Copy and paste the above text.  
3. **Save and commit** the file in GitHub Desktop.  
4. **Push** to GitHub.  

