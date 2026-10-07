BANK CUSTOMER CHURN ANALYSIS
-- SQL Analysis


-- Queries 

-- Q1. Which age group has the highest customer churn rate?

SELECT age,
     COUNT(*) AS Totalcustomers,
     count(CASE WHEN Churn = 'yes' THEN 1  END) AS Churnedcustomers,
     SUM(CASE WHEN Churn = 'no' THEN 1 ELSE 0 END) AS Retainedcustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as ChurnRate
 FROM cust
 group by age
 order by age asc ;
 
--   Q2 Does customer tenure affect churn?

SELECT
    CASE
        WHEN tenureyears < 3 THEN 'Short Tenure'
        WHEN tenureyears BETWEEN 3 AND 8 THEN 'Medium Tenure'
        ELSE 'Long Tenure'
    END AS Tenure_Group,
    COUNT(*) AS Total_Customers,
    COUNT(CASE WHEN churn = 'yes' THEN 1 END) AS Churned_Customers,
    ROUND(
        COUNT(CASE WHEN churn = 'yes' THEN 1 END) * 100.0/ COUNT(*),
        2) AS Churn_Rate
FROM cust
GROUP BY
    CASE
        WHEN tenureyears < 3 THEN 'Short Tenure'
        WHEN tenureyears BETWEEN 3 AND 8 THEN 'Medium Tenure'
        ELSE 'Long Tenure'
    END;
-- Q3 Which state has the highest customer churn rate?

select state,count(*) as TotalCust,
count(case when churn='yes' then 1 end) as Churnedcustomers,
round(count(case when churn='yes' then 1 end)*100/ count(*),2) as State_Churnrate
from cust
group by state
order by State_Churnrate desc ;
 
-- Q4. Is customer churn higher among male or female customers?

select gender,
COUNT(*) AS Totalcustomers,
count(CASE WHEN Churn = 'yes' THEN 1  END) AS Churnedcustomers,
ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as ChurnRate
 FROM cust
 group by gender;
  
-- Q5. Are inactive customers more likely to churn than active customers?
        
select IsActiveMember,
COUNT(*) AS Totalcustomers,
count(CASE WHEN Churn = 'yes' THEN 1  END) AS Churnedcustomers,
ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as ChurnRate
 FROM cust
 group by IsActiveMember;
 
 -- Q6 Are customers without a credit card more likely to churn than customers with a credit card?

select HasCreditCard,
count(*) AS totalCust,
count(CASE WHEN Churn = 'yes' THEN 1  END) AS Churnedcustomers,
count(CASE WHEN Churn = 'no' THEN 1  END) AS Retainedcustomers,
ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as ChurnRate,
ROUND(
        SUM(CASE WHEN Churn = 'no' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as retainedRate        
from cust
group by HasCreditCard;

--  Q7. Does estimated salary have an impact on customer churn?

select case
          when estimatedsalary<500000 then 'lowsalary'
          when estimatedsalary between 500000 and 2000000 then'Mediumsalary'
          else 'highsalary'
          end as SalaryGroup,
	COUNT(*) AS Total_Customers,
    COUNT(CASE WHEN churn = 'yes' THEN 1 END) AS Churned_Customers,
    ROUND(
        COUNT(CASE WHEN churn = 'yes' THEN 1 END) * 100.0/ COUNT(*),
        2) AS Churn_Rate
FROM cust
GROUP BY
    CASE
        when estimatedsalary<500000 then 'lowsalary'
          when estimatedsalary between 500000 and 2000000 then 'Mediumsalary'
          else 'highsalary'
    end; 
    
-- Q8.Are customers with lower credit scores more likely to churn?

select  case
           when CreditScore<580 then 'PoorCreditScore'
           when CreditScore between 580 and 670 then 'fairCreditScore'
		   when CreditScore between 670 and 740 then 'GoodCreditScore'
		   when CreditScore between 740 and 799 then 'ExcellentCreditScore'
           else 'Exceptional'
           end as CreditScoreGroup,
           count(*) as Total_Customers,
    COUNT(CASE WHEN churn = 'yes' THEN 1 END) AS Churned_Customers,
    ROUND(
        COUNT(CASE WHEN churn = 'yes' THEN 1 END) * 100.0/ COUNT(*),
        2) AS Churn_Rate
FROM cust
GROUP BY
       CASE
           when CreditScore<580 then 'PoorCreditScore'
           when CreditScore between 580 and 670 then 'fairCreditScore'
		   when CreditScore between 670 and 740 then 'GoodCreditScore'
		   when CreditScore between 740 and 799 then 'ExcellentCreditScore'
           else 'Exceptional'
           end ;
        
-- Q9 Which account type has the highest customer churn rate?

select accountType, 
count(*) AS totalCust,
count(CASE WHEN Churn = 'yes' THEN 1  END) AS Churnedcustomers,
ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as ChurnRate
from cust
group by accountType
order by  ChurnRate desc;

-- Q10. Does the number of banking products held by a customer affect churn?   

select NumberOfProducts,
COUNT(*) AS Totalcustomers,
count(CASE WHEN Churn = 'yes' THEN 1  END) AS Churnedcustomers,
ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2)  as ChurnRate
 FROM cust
 group by NumberOfProducts
 order by NumberOfProducts asc;
 
-- Q11. Are customers with lower account balances more likely to churn? 

select  
     CASE
        WHEN balance <= 10000 THEN 'Very Low'
        WHEN balance <= 50000 THEN 'Low'
        WHEN balance <= 100000 THEN 'Medium'
        WHEN balance <= 250000 THEN 'High'
        WHEN balance <= 500000 THEN 'Very High'
        ELSE 'Above 5L'
    END AS balance_category,
           count(*) as Total_Customers,
           COUNT(CASE WHEN churn = 'yes' THEN 1 END) AS Churned_Customers,
           ROUND(
                COUNT(CASE WHEN churn = 'yes' THEN 1 END) * 100.0/ COUNT(*),
                2) AS Churn_Rate
FROM cust
GROUP BY
       CASE
		WHEN balance <= 10000 THEN 'Very Low'
        WHEN balance <= 50000 THEN 'Low'
        WHEN balance <= 100000 THEN 'Medium'
        WHEN balance <= 250000 THEN 'High'
        WHEN balance <= 500000 THEN 'Very High'
        ELSE 'Above 5L'
    END ;
    
-- Q12. Which transaction channel is most commonly used by churned customers?

select t.Channel,
count(*) as Total_Customers,
           COUNT(CASE WHEN churn = 'yes' THEN 1 END) AS Churned_Customers,
           ROUND(
                COUNT(CASE WHEN churn = 'yes' THEN 1 END) * 100.0/ COUNT(*),
                2) AS Churn_Rate
from t join cust
on t.CustomerID=cust.CustomerID
group by channel
order by churn_rate desc;    

-- Q13.Which transaction types are most commonly associated with churned customers?

select t.TransactionType,
count(*) as Total_Customers,
           COUNT(CASE WHEN churn = 'yes' THEN 1 END) AS Churned_Customers,
           ROUND(
                COUNT(CASE WHEN churn = 'yes' THEN 1 END) * 100.0/ COUNT(*),
                2) AS Churn_Rate
from t join cust
on t.CustomerID=cust.CustomerID
group by TransactionType
order by churn_rate desc;    

-- Q14. Do customers with lower transaction activity have a higher churn rate?


--  Q15. Are customers who have not transacted recently more likely to churn?

SELECT
    CASE
        WHEN transaction_count = 0 THEN '0 Transactions'
        WHEN transaction_count <= 5 THEN '1-5'
        WHEN transaction_count <= 10 THEN '6-10'
        WHEN transaction_count <= 20 THEN '11-20'
        ELSE '20+'
    END AS TransactionGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2) AS ChurnRate

From (
    SELECT
        c.CustomerID,
        c.Churn,
        COUNT(t.TransactionID) AS transaction_count
    FROM cust c
    LEFT JOIN t
        ON c.CustomerID = t.CustomerID
    GROUP BY c.CustomerID, c.Churn
) v

GROUP BY TransactionGroup;

-- Q16.Are customers who raise more complaints more likely to churn?
  
SELECT
    CASE
        WHEN complaint_count = 0 THEN '0 complaints'
        WHEN complaint_count = 1 THEN '1 complaints'
        WHEN complaint_count = 2 THEN '2 complaints'
        WHEN complaint_count = 3 THEN '3 complaints '
        ELSE '3+'
    END AS ComplaintGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2) AS ChurnRate

From (
    SELECT
        c.CustomerID,
        c.Churn,
        COUNT(complaints.complaintID) AS complaint_count
    FROM cust c
    LEFT JOIN complaints
        ON c.CustomerID = complaints.CustomerID
    GROUP BY c.CustomerID, c.Churn
) v

GROUP BY complaintGroup;

-- Q17.Which complaint categories are most common among churned customers?

select complaints.ComplaintCategory,
 COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2) AS ChurnRate
        from cust
         join complaints
        on cust.CustomerID=complaints.CustomerID
        group by complaints.ComplaintCategory;
        
-- Q18.Are customers with unresolved complaints more likely to churn?

select complaints.ResolutionStatus,
COUNT(*) AS TotalCustomers,
    SUM(  case WHEN Churn = 'yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM( CASE WHEN Churn = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2) AS ChurnRate
        from cust
        join complaints
        on cust.CustomerID=complaints.CustomerID
        group by complaints.ResolutionStatus;

-- Q19.Who are the highest-balance customers in each state?

with cte as (
select customerid,
 state,
 balance,
rank() over(partition by state order by balance desc) as R
from cust)
select * from cte
where R<=3 ;

-- Q20.What was the most recent transaction of each customer?

with cte as (
select CustomerID,
TransactionID,
TransactionDate,
Amount,
row_number() over(partition by customerID order by TransactionDate desc) as recent 
from t)
select * from cte
 where recent=1;
 
-- Q21.How does a customer's current transaction amount compare with their previous transaction?

with cte as (
select CustomerID,
TransactionID,
TransactionDate,
Amount,
lag(amount) over(partition by CustomerID order by TransactionDate) as Prev_Transc
from t)
select *,
amount- isnull(Prev_Transc) as Difference
from cte;

