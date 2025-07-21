# **MyBank Database SQL Queries**

## **Project Overview**

This project demonstrates the design and analysis of a banking database (`mybank`) using SQL. It includes queries to manage and analyze customers, accounts, transactions, loans, credit cards, branches, and ATMs.

The SQL scripts focus on **data management, aggregation, and insights** for a typical banking system.

---
## **Project Screenshot**
## Retrive All Table Information
![Bank Dataset Analysis Screenshot 1](https://github.com/Jayesh-dev-glitch/Bank-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20125126%20-%20Copy.png)

## Interest Rates
![Bank Dataset Analysis Screenshot 2](https://github.com/Jayesh-dev-glitch/Bank-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20125158.png)

## Screenshot 3
![Bank Dataset Analysis Screenshot 3](https://github.com/Jayesh-dev-glitch/Bank-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20125213.png)

## Screenshot 4
![Bank Dataset Analysis Screenshot 4](https://github.com/Jayesh-dev-glitch/Bank-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20125230.png)

## **Key Features**

* **Database Setup:**

  * Creation of `mybank` database.
  * Multiple tables: `customers`, `accounts`, `transactions`, `loans`, `creditcards`, `branches`, `atms`.

* **Data Analysis Queries:**

  * Total customers, accounts, and loan amounts.
  * Active accounts and loans with interest rates above a threshold.
  * Credit cards exceeding credit limits.

* **Advanced Joins:**

  * Retrieve customer details with accounts.
  * Get transaction details along with associated accounts and customers.

* **Top Insights:**

  * Top 10 customers with the highest loan amount.
  * Latest transaction date per account.
  * Customers with multiple accounts.

* **String and Date Functions:**

  * Extract first 3 characters of names.
  * Split full names into first and last names.
  * Calculate days remaining for loan repayment.

* **Aggregate Operations:**

  * Average customer age.
  * Average credit card balance per customer.
  * Total transaction amount per account (monthly).

* **Case Statements:**

  * Categorizing customers into age groups (below 30, 30–60, above 60).

* **Data Cleanup:**

  * Delete inactive accounts.
  * Identify inactive ATMs per location.

* **Miscellaneous Queries:**

  * Fetch the second highest loan.
  * Show current date and time.
  * Clone `customers` table structure and data.

---

## **Technologies Used**

* **Database:** MySQL
* **SQL Features:**
  `SELECT`, `JOIN`, `GROUP BY`, `HAVING`, `CASE`, `SUBSTRING`, `DATE FUNCTIONS`, `AGGREGATE FUNCTIONS`, `ORDER BY`, `LIMIT`, `DELETE`.

---

## **How to Use**

1. Clone the repository.
2. Import the SQL file or run queries sequentially in **MySQL Workbench** or any SQL client.
3. Explore and modify queries for custom insights.

---
