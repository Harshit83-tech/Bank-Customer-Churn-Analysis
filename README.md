# 🏦 Bank Customer Churn Analysis

An end-to-end **Bank Customer Churn Analysis** project using **SQL and Power BI** to identify customer churn patterns, understand customer behavior, and generate business-focused insights for customer retention.

---

## 📌 Project Overview

Customer churn is a major challenge for banks because losing existing customers can affect revenue, customer lifetime value, and long-term customer relationships.

This project analyzes **50K bank customers** along with their transaction and complaint information to understand:

- Which customer segments have higher churn rates
- How churn varies across age, credit score, tenure, products, balance, gender, account type, and geography
- Whether customer activity and transaction behavior differ between churned and retained customers
- How complaints and complaint-resolution status relate to churn
- Which customer groups may need greater retention attention

The final output is an interactive **Power BI dashboard** supported by SQL-based analysis.

> **Note:** The analysis identifies patterns and associations in the available data. It does not claim that a particular factor directly causes churn.

---

## 🎯 Business Problem

A bank may know how many customers have left, but that alone is not enough.

The business needs to understand **where churn is concentrated and what customer characteristics or behaviors are associated with higher churn** so that retention teams can prioritize the right segments.

This project addresses questions such as:

- What is the overall churn rate?
- Which age groups have the highest churn?
- Does credit score relate to churn?
- How does churn vary by customer tenure?
- Does the number of products held by a customer matter?
- Which states show higher churn rates?
- Does active-member status differ between churned and retained customers?
- How do transaction channels and transaction types compare?
- Are customers with complaints more likely to churn?
- Does complaint resolution status show different churn patterns?

---

## 🎯 Project Objectives

- Analyze overall customer churn.
- Identify high-risk customer segments.
- Analyze customer demographics and account characteristics.
- Examine transaction behavior in relation to churn.
- Analyze customer complaints and resolution status.
- Build an interactive Power BI dashboard.
- Generate actionable business insights.
- Provide recommendations that can support customer retention strategies.

---

## 📊 Key Project Metrics

| KPI | Value |
|---|---:|
| Total Customers | **50K** |
| Churned Customers | **19K** |
| Churn Rate | **37.30%** |
| Retained Customers | **31K** |

---

# 🗂️ Dataset

The project uses three main datasets.

### 1. Customer Data

Contains customer-level information used for demographic, account, and churn analysis.

Key attributes include:

- Age
- Gender
- State / City
- Account Type
- Credit Score
- Tenure
- Number of Products
- Balance
- Active Member Status
- Churn Status

### 2. Transaction Data

Used to analyze customer transaction behavior.

Key attributes include:

- Transaction Date / Month
- Transaction Amount
- Transaction Type
- Transaction Channel
- Transaction Status
- Customer Churn Status

Transaction channels include:

- Branch
- ATM
- Mobile Banking
- Internet Banking
- POS

Transaction types include:

- NEFT
- UPI Transfer
- Card Payment
- Deposit
- IMPS
- Withdrawal

### 3. Complaint Data

Used to analyze customer complaints and their relationship with churn.

Complaint categories include:

- Card Issue
- KYC Update
- Account Access
- Mobile Banking
- Service Delay
- Fraud Report
- Charges
- Unauthorised Transaction

---

# 🛠️ Tools & Technologies

- **MySQL** — SQL-based data analysis
- **Power BI** — Interactive dashboard and visualization
- **DAX** — Measures and calculated metrics
- **Microsoft Excel / CSV** — Data preparation and source data
- **GitHub** — Project documentation and version control

---

# 🔍 SQL Analysis

SQL was used to explore and analyze the underlying customer, transaction, and complaint data.

### SQL techniques used

- SELECT and filtering
- Aggregate functions
- GROUP BY
- CASE statements
- INNER JOIN
- LEFT JOIN
- Subqueries
- Window functions
- Ranking and segmentation
- Churn-rate calculations
- Transaction analysis
- Complaint analysis

The SQL queries used for the project are available in:

```text
BANK CUSTOMER CHURN ANALYSIS.sql
