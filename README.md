# Bank Customer Churn Analysis

## 📌 Project Overview

Customer churn is a major challenge for banks because losing existing customers can directly affect revenue and long-term customer relationships.

This project analyzes bank customer data to identify **customer churn patterns, behavioral trends, transaction characteristics, and complaint-related factors**. The analysis was performed using **SQL and Power BI** to transform raw customer data into actionable business insights.

The goal is to help a bank understand **which types of customers are more likely to churn and what factors may be associated with customer attrition**, so that appropriate retention strategies can be developed.

---

## 🎯 Business Problem

Banks need to identify customers who are at a higher risk of leaving before they actually churn.

This project focuses on questions such as:

* What is the overall customer churn rate?
* Which customer segments have higher churn?
* How does churn vary with customer tenure?
* Are there differences in churn across customer demographics?
* How are customer transactions related to churn?
* Do customers with complaints show different churn patterns?
* Which customer segments should the bank prioritize for retention?

---

## 🎯 Project Objectives

* Analyze customer churn patterns.
* Identify high-risk customer segments.
* Analyze customer transaction behavior.
* Examine the relationship between complaints and churn.
* Use SQL to perform structured data analysis.
* Build an interactive Power BI dashboard.
* Provide business-oriented insights and recommendations.

---

## 🗂️ Dataset

The project uses three datasets:

### 1. Customers

Contains customer-level information including customer demographics, tenure, and churn status.

### 2. Transactions

Contains customer transaction-related information used to analyze customer activity and behavior.

### 3. Complaints

Contains customer complaint information used to examine the relationship between complaints and churn.

---

## 🛠️ Tools & Technologies

* **SQL / MySQL** — Data analysis and querying
* **Power BI** — Data visualization and dashboard development
* **DAX** — Measures and calculated metrics
* **Microsoft Excel / CSV** — Data storage and preparation
* **GitHub** — Project version control and portfolio

---

## 🔍 SQL Analysis

SQL was used to analyze customer, transaction, and complaint data.

Key SQL techniques used include:

* SELECT and filtering
* GROUP BY and aggregate functions
* CASE statements
* INNER JOIN
* LEFT JOIN
* Subqueries
* Window functions
* Ranking
* Customer segmentation
* Churn analysis
* Transaction analysis
* Complaint analysis

The SQL queries used for the project are available in:

`SQL/bank_churn_analysis.sql`

---

## 📊 Power BI Dashboard

The Power BI report was developed as an interactive multi-page analytical dashboard.

Key Power BI features used:

* KPI cards
* Slicers
* Interactive filtering
* Drill-through
* Tooltips
* Dynamic titles
* DAX measures
* Data modelling
* Relationships between tables
* Customer segmentation
* Executive dashboard design

---

## 💡 Key Areas of Analysis

The dashboard analyzes churn from multiple perspectives, including:

* Overall churn
* Customer demographics
* Customer tenure
* Transaction behavior
* Complaint status
* Customer segments
* Churn trends and patterns

One important finding from the analysis was that **customers with medium tenure (approximately 3–8 years) showed comparatively higher churn**, highlighting a customer segment that may require additional retention attention.

---

## 💼 Business Recommendations

Based on the analysis, banks can consider:

1. **Targeted retention campaigns**
   Identify high-risk customer segments and provide personalized retention offers.

2. **Focus on medium-tenure customers**
   Monitor customers in the higher-risk tenure range and proactively engage them.

3. **Monitor customer complaints**
   Analyze complaint patterns and improve resolution processes for customers showing signs of dissatisfaction.

4. **Use transaction behavior for early warning**
   Customers showing declining or unusual activity can be monitored as potential churn risks.

5. **Customer segmentation**
   Develop different retention strategies for different customer groups instead of using a single approach for all customers.

---

## 📁 Repository Structure

```text
Bank-Customer-Churn-Analysis/
│
├── Customers.csv
├── Transactions.csv
├── Complaints.csv
│
├── SQL/
│   └── bank_churn_analysis.sql
│
├── PowerBI/
│   └── Bank_Customer_Churn.pbix
│
├── Dashboard/
│   └── Dashboard Screenshots
│
└── README.md
```

---

## 🚀 Project Outcome

This project demonstrates the complete workflow of a data analytics project:

**Raw Data → Data Analysis → SQL Queries → Data Modelling → DAX → Power BI Dashboard → Business Insights → Recommendations**

The project demonstrates practical skills in **SQL, Power BI, DAX, data modelling, data visualization, and business-oriented analytical thinking**.
