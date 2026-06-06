# Telco Customer Churn Analysis


## Executive Summary

Customer retention is a critical component of long-term business success within the telecommunications industry. Acquiring new customers is often significantly more expensive than retaining existing ones, making customer churn analysis an essential business function. This project examined customer churn patterns within a telecommunications company to identify key drivers of customer attrition and develop actionable recommendations to improve customer retention. 

Using SQL and Google BigQuery, customer-level data was cleaned, validated, and transformed to support exploratory analysis. Key customer attributes including contract type, tenure, internet service, payment method, technical support utilization, and monthly charges were analyzed to determine their relationship with customer churn. Findings were visualized through an interactive Tableau dashboard designed to support business decision-making. 

The analysis identified several factors strongly associated with churn, including month-to-month contracts, short customer tenure, fiber optic internet service, electronic check payment methods, lack of technical support services, and higher monthly charges. These findings suggest multiple opportunities for targeted retention initiatives and improved customer engagement strategies.


## Business Problem

Customer churn represents a direct loss of revenue and future growth opportunities. Understanding why customers leave and identifying groups at elevated risk of churn allows organizations to proactively implement retention strategies and improve customer lifetime value.

The objective of this analysis was to answer the following business questions:

- Which customer groups exhibit the highest churn rates?
- What customer characteristics are associated with churn behavior?
- Are there identifiable high-risk customer segments?
- What actions can the business take to improve customer retention?


## Data Preparation

The analysis was conducted using customer-level telecommunications data consisting of demographic, service, billing, and account information.

Data Cleaning Activities
- Converted Total Charges to a numeric data type using SQL.
- Standardized churn values into a binary churn flag:
    - 1 = Customer Churned
    - 0 = Customer Retained
- Validated row counts and data integrity.
- Checked for duplicate customer records.
- Verified null values and data type consistency.
- Created a cleaned analytical dataset for reporting and dashboard development.


## Tools Used
- Google BigQuery
- SQL
- Tableau Public
- CSV Data Export


## Methodology

The analysis followed a structured workflow:

1. Data Cleaning and Validation
2. Exploratory Data Analysis (EDA)
3. Customer Segmentation Analysis
4. KPI Development
5. Dashboard Design and Visualization
6. Business Recommendation Development

Churn rates were calculated using the percentage of customers with a churn flag equal to one within each customer segment.


## Key Findings

## 1. Contract Type Significantly Influences Churn

Customers on month-to-month contracts exhibited substantially higher churn rates than customers on one-year or two-year contracts.


### Business Impact

Customers without long-term commitments are significantly more likely to leave, increasing customer acquisition costs and reducing customer lifetime value.


## Recommendation

Implement incentives that encourage customers to transition from month-to-month agreements into longer-term contracts through loyalty rewards, bundled services, or discounted pricing.


## 2. Customer Churn Is Highest During the First Year

Customers within their first twelve months of service demonstrated the highest levels of churn.


### Business Impact

The early stages of the customer lifecycle represent the highest-risk period for attrition.


### Recommendation

Develop structured onboarding programs, proactive customer engagement campaigns, and early customer success initiatives designed to improve first-year retention.


## 3. Fiber Optic Customers Experience Elevated Churn

Customers subscribed to fiber optic internet services exhibited higher churn rates than customers using alternative internet services.


### Business Impact

Higher churn among premium service customers may indicate issues related to pricing expectations, perceived value, service quality, or customer satisfaction.


### Recommendation

Conduct customer satisfaction research and service quality reviews to better understand the underlying causes of churn within this customer segment.


## 4. Payment Method Is Associated With Retention

Customers using electronic checks demonstrated the highest churn rates, while customers enrolled in automatic payment methods exhibited stronger retention behavior.


### Business Impact

Payment preferences may serve as an indicator of customer engagement and account stability.


### Recommendation

Promote automatic payment enrollment through customer incentives and simplified enrollment processes.


## 5. Technical Support Services Improve Retention

Customers without technical support services experienced significantly higher churn rates compared to customers receiving support services.


### Business Impact

Customer support appears to play an important role in retention and customer satisfaction.


### Recommendation

Increase customer awareness of available support resources and consider expanding technical support offerings to improve customer engagement.


## 6. Higher Monthly Charges Are Associated With Increased Churn

Analysis of monthly charges indicated that customers with higher monthly bills generally demonstrated higher churn behavior.


### Business Impact

Price sensitivity may be influencing retention among higher-revenue customers.


### Recommendation

Evaluate pricing structures, promotional offers, and service bundles to improve perceived customer value.


## High-Risk Customer Profile

The analysis identified a common high-risk customer profile characterized by:

- Month-to-month contract
- Less than one year of tenure
- Fiber optic internet service
- Electronic check payment method
- No technical support service
- Higher monthly charges

Customers exhibiting multiple risk factors represent prime candidates for proactive retention campaigns.


## Dashboard Overview

An interactive Tableau dashboard was developed to provide stakeholders with a centralized view of customer churn behavior.


Dashboard features include:

KPI Metrics
- Total Customers
- Churned Customers
- Overall Churn Rate
- Average Monthly Charges
- Average Customer Tenure


Analytical Visualizations
- Customer Churn by Contract Type
- Customer Churn by Tenure Group
- Customer Churn by Internet Service
- Customer Churn by Payment Method
- Customer Churn by Technical Support Status
- Monthly Charges Distribution by Churn Status
- Interactive Filters
- Contract Type
- Internet Service
- Payment Method


## Conclusion

This analysis successfully identified several key drivers of customer churn within the telecommunications customer base. Contract structure, customer tenure, service engagement, payment behavior, and pricing all demonstrated meaningful relationships with customer retention outcomes.

The findings suggest that targeted retention strategies focused on early customer engagement, long-term contract adoption, technical support utilization, and customer satisfaction improvements may help reduce churn and improve customer lifetime value.

By leveraging these insights, business leaders can make more informed decisions regarding customer retention initiatives, resource allocation, and long-term growth strategies.
