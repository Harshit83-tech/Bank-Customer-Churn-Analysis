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

- What is the overall customer churn rate?
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

## 🗂️ Dataset

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

## 🛠️ Tools & Technologies

- **MySQL** — SQL-based data analysis
- **Power BI** — Interactive dashboard and visualization
- **DAX** — Measures and calculated metrics
- **Microsoft Excel / CSV** — Data preparation and source data
- **GitHub** — Project documentation and version control

---

## 🔍 SQL Analysis

SQL was used to explore and analyze the underlying customer, transaction, and complaint data.

### SQL Techniques Used

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

`BANK CUSTOMER CHURN ANALYSIS.sql`

---

# 📈 Power BI Dashboard

The Power BI report contains four major analytical pages designed around different business questions.

## 1. Executive Overview

The **Executive Overview** provides a high-level view of the bank's overall churn situation.

### Key Elements

- Total Customers
- Churned Customers
- Churn Rate
- Retained Customers
- Churn Rate by Age Group
- Churn Rate by Account Type
- Customer Activity Status
- Churn Rate by State
- State / City slicer
- Account Type slicer
- Gender slicer

This page is designed to give decision-makers a quick overview of the customer churn situation.

---

## 2. Customer Churn Analysis

This page focuses on customer characteristics and their relationship with churn.

### Key Analyses

- Churn Rate by Credit Score Group
- Churn Rate by Tenure Group
- Churn Rate by Gender
- Churn Rate by Age Group
- Churn Rate by Number of Products
- Churn Rate by Balance Segment

### Interactive Filters

- State / City
- Active Member Status
- Account Type
- Gender

This page helps identify customer segments where churn is comparatively higher.

---

## 3. Transaction Analysis

This page examines transaction activity and its relationship with customer churn.

### Key Analyses

- Total Transaction Amount by Month
- Transaction Churn Rate by Channel
- Transaction Churn Rate by Transaction Status
- Transaction Churn Rate by Transaction Type
- Average Transaction Amount by Churn Status

### Transaction Channels

- Branch
- ATM
- Mobile Banking
- Internet Banking
- POS

### Transaction Types

- NEFT
- UPI Transfer
- Card Payment
- Deposit
- IMPS
- Withdrawal

### Interactive Filters

- State / City
- Gender
- Account Type

This page helps compare transaction patterns across customer segments and transaction categories.

---

## 4. Complaints & Retention Analysis

This page focuses on customer complaints and their relationship with churn.

### Key Analyses

- Complaint Churn Rate by Complaint Category
- Complaint Churn Rate by Resolution Status
- Churn Rate by Complaint Status
- Complaints by Category

### Complaint Categories

- Card Issue
- KYC Update
- Account Access
- Mobile Banking
- Service Delay
- Fraud Report
- Charges
- Unauthorised Transaction

### Interactive Filters

- State / City
- Gender
- Account Type

This page helps identify whether complaint-related customers represent a higher-risk group for retention.

---

## 🎛️ Power BI Interactivity

The report was designed as an **interactive analytical dashboard**, rather than a collection of static charts.

Features implemented include:

- **Slicers** for customer segmentation
- **Interactive filtering** across visuals
- **Drill-through** for more detailed analysis
- **Report tooltips** for additional contextual information
- **Dynamic titles** that respond to report selections
- **DAX measures** for calculating KPIs and analytical metrics
- **Data modelling** and relationships between tables
- **Cross-visual interactions**
- **Multi-page analysis** covering customers, transactions, and complaints

These features allow users to move from an overall churn view into more specific customer, transaction, and complaint-level analysis.

---

## 💡 Key Insights

### 1. Overall Customer Churn Is Significant

The dashboard shows approximately **19K churned customers out of 50K**, resulting in an overall churn rate of **37.30%**.

This indicates that customer retention is a significant business concern in the analyzed dataset.

### 2. Older Customers Show Higher Churn

The **55+ age group** shows the highest churn rate among the displayed age groups, at approximately **48%**.

The 45–54 group also shows comparatively higher churn than younger age groups.

### 3. Poor Credit-Score Customers Show Higher Churn

Customers in the **Poor credit-score group** show substantially higher churn compared with the other displayed credit-score groups.

This segment may therefore require closer investigation.

### 4. Customers with One Product Show Higher Churn

The dashboard shows the highest churn rate among customers holding **one product**, at approximately **51%**.

Customers with multiple products show comparatively lower churn rates.

This suggests that product depth may be useful when segmenting customers for retention analysis.

### 5. Customers with Complaints Show Higher Churn

The dashboard shows a substantially higher churn rate among customers who have complaints compared with customers without complaints.

This makes complaint handling an important area for further retention analysis.

### 6. Churn Varies Across States

The dashboard shows differences in churn rates across the displayed states.

Geographic segmentation can help identify locations that may require further investigation.

### 7. Transaction Channels Show Broadly Similar Churn Levels

The transaction analysis shows relatively similar churn-rate levels across the displayed transaction channels and transaction types.

Therefore, transaction channel alone may not be sufficient to identify high-risk customers. It should be analyzed together with other customer and behavioral attributes.

---

## 💼 Business Recommendations

Based on the observed patterns, a bank could consider the following strategies.

### 1. Prioritize High-Risk Customer Segments

Use customer attributes such as:

- Age
- Credit score
- Tenure
- Number of products
- Balance segment
- Active-member status

to identify customer segments requiring closer monitoring.

### 2. Strengthen Complaint Management

Customers with complaints show a substantially higher churn rate.

Banks could investigate:

- Faster complaint resolution
- Proactive customer follow-up
- Root-cause analysis of recurring complaints
- Service-quality improvements

### 3. Improve Product Engagement

Customers with only one product show higher churn in the analyzed dataset.

The bank could explore suitable cross-selling and engagement strategies while ensuring that recommendations remain relevant to individual customers.

### 4. Monitor Older Customer Segments

The higher churn observed among older age groups suggests that their banking needs and service experience may require separate analysis.

### 5. Combine Transaction Data with Customer Attributes

Transaction behavior should not be used alone to assess churn risk.

It can be combined with:

- Customer demographics
- Account characteristics
- Activity status
- Complaints
- Credit score
- Tenure

to create a more complete customer-risk profile.

### 6. Develop Continuous Churn Monitoring

The Power BI dashboard can serve as a starting point for regularly monitoring churn KPIs and identifying segments that require deeper investigation.

These recommendations are suggested actions based on observed patterns, not proven outcomes of implemented retention campaigns.

---

# 📸 Dashboard Preview

## Executive Overview

![Executive Overview](Dashboard/executive-overview.png)

## Customer Churn Analysis

![Customer Churn Analysis](Dashboard/customer-churn-analysis.png)

## Transaction Analysis

![Transaction Analysis](Dashboard/transaction-analysis.png)

## Complaints & Retention Analysis

![Complaints & Retention Analysis](Dashboard/complaints-retention-analysis.png)

---

## 📁 Repository Structure

```text
Bank-Customer-Churn-Analysis/
│
├── BANK CUSTOMER CHURN ANALYSIS.sql
├── ChurnProject.xlsx
├── Churn_Project.pbix
├── ChurnedProject.csv
├── README.md
│
└── Dashboard/
    ├── executive-overview.png
    ├── customer-churn-analysis.png
    ├── transaction-analysis.png
    └── complaints-retention-analysis.png
```

---

## 🚀 Project Workflow

```text
Raw Data
   ↓
Data Preparation
   ↓
SQL Analysis
   ↓
Data Modelling
   ↓
DAX Measures
   ↓
Power BI Visualization
   ↓
Interactive Dashboard
   ↓
Business Insights
   ↓
Retention Recommendations
```

---

## 📌 Project Outcome

This project demonstrates a practical data analytics workflow:

**Raw Data → SQL Analysis → Data Modelling → DAX → Visualization → Interactive Analysis → Business Insights → Business Recommendations**

### Skills Demonstrated

- SQL
- MySQL
- Power BI
- DAX
- Data Modelling
- Data Visualization
- Dashboard Design
- Customer Segmentation
- Churn Analysis
- Business Analysis
- Data-Driven Decision Making

---

## 👤 Author

**Harshit Chandra**

B.Tech Computer Science & Engineering

GitHub: [Harshit83-tech](https://github.com/Harshit83-tech)
