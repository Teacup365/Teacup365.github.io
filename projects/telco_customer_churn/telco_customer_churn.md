# Telco Customer Churn

## Overview
Conducted an end-to-end customer churn analysis using SQL, BigQuery, and Tableau to identify key drivers of customer attrition within a telecommunications company. Cleaned and transformed customer-level data, performed exploratory data analysis, and developed an interactive dashboard to evaluate churn patterns across contract types, customer tenure, internet service offerings, payment methods, support services, and pricing behavior.

## Business Question
- Identify factors contributing to customer churn
- Analyze customer retention trends
- Segment high-risk customer groups
- Develop actionable business recommendations 

Customer retention is a critical driver of profitability within the telecommunications industry. This project analyzed customer churn behavior to identify the primary factors contributing to customer attrition and uncover opportunities for improving retention.

Using SQL in Google BigQuery, customer-level data was cleaned, transformed, and analyzed to evaluate the relationship between churn and various customer attributes, including contract type, tenure, internet service, payment method, technical support usage, and monthly charges. The resulting insights were visualized through an interactive dashboard developed in Tableau Public.

The analysis revealed that customers on month-to-month contracts experienced significantly higher churn rates than customers on longer-term agreements. Churn was also concentrated among customers within their first year of service, highlighting onboarding and early engagement as critical retention opportunities. Additional findings showed elevated churn among fiber optic customers, electronic check users, and customers without technical support services. Furthermore, higher-paying customers demonstrated increased churn behavior, suggesting that pricing sensitivity and perceived service value may influence customer retention.

Based on these findings, recommended actions include incentivizing long-term contracts, strengthening onboarding initiatives, expanding customer support engagement, encouraging automatic payment enrollment, and developing targeted retention campaigns for high-risk customer segments.


## Tools Used
- SQL / BigQuery
- Tableau
- Python / Pandas
- Excel

## Process
1. Cleaned the data
2. Explored trends
3. Built visualizations
4. Created recommendations

## Key Insights
- Customers on month-to-month contracts demonstrated substantially higher churn rates compared to customers on longer-term agreements, indicating that contract commitment plays a significant role in customer retention.
- Churn rates were highest among customers within their first year of service, suggesting that onboarding experience and early-stage customer engagement are critical opportunities for improving retention. 
- Customers subscribed to fiber optic internet services exhibited elevated churn rates relative to other internet service categories, potentially indicating concerns related to pricing, service expectations, or customer satisfaction. 
- Customers utilizing electronic check payment methods experienced the highest churn rates, while customers enrolled in automatic payment methods showed stronger retention behavior and greater account stability. 
- Customers without access to technical support services demonstrated significantly higher churn rates, highlighting the importance of customer support and service engagement in long-term retention strategies. 
- Customers with higher monthly charges generally exhibited greater churn behavior, suggesting that pricing sensitivity and perceived service value may influence customer attrition among higher-revenue customer segments.

## Analysis
[Python Analysis](/projects/telco_customer_churn/python/customer_churn.ipynb)

[SQL Analysis](/projects/telco_customer_churn/SQL/SQL.md)

## Dashboard / Visuals
[Tableau Dashboard Link]((https://public.tableau.com/app/profile/tianee.carnakie/viz/TelcoCustomerChurn_17793766858880/TelcoCustomerChurnAnalysisDashboard))

## Final Recommendation
- Incentivize long-term contracts.
- Improve onboarding during the first year. 
- Investigate fiber service satisfaction issues. 
- Promote tech support and auto-pay adoption. 
- Develop retention campaigns for high-risk customers.
