Telco Customer Data Cleaned
```
CREATE OR REPLACE TABLE `avid-lacing-483619-b2.customer_churn.customer_churn_cleaned` AS
SELECT
  Contract,
  COUNT(*) AS total_customers,
  COUNTIF(Churn = TRUE) AS churned,
  ROUND(COUNTIF(Churn = TRUE)*100.0/COUNT(*),2) AS churn_rate
FROM `avid-lacing-483619-b2.customer_churn.customer-churn_raw`
GROUP BY Contract
ORDER BY churn_rate DESC;
```

Churn By Contract
```
SELECT
  Contract,
  COUNT(*) AS total_customers,
  SUM(Churn_Flag) AS churned_customers,
  ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `avid-lacing-483619-b2.telco_customer_churn.customer_churn_cleaned`
GROUP BY Contract
ORDER BY churn_rate DESC;
```

Churn By Internet Service
```
SELECT
  InternetService,
  COUNT(*) AS total_customers,
  SUM(Churn_Flag) AS churned_customers,
  ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `avid-lacing-483619-b2.telco_customer_churn.customer_churn_cleaned`
GROUP BY InternetService
ORDER BY churn_rate DESC;
```

Churn By Payment Method
```
SELECT
  PaymentMethod,
  COUNT(*) AS total_customers,
  SUM(Churn_Flag) AS churned_customers,
  ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `avid-lacing-483619-b2.telco_customer_churn.customer_churn_cleaned`
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;
```

Churn By Tenure
```
SELECT
  CASE
    WHEN tenure <= 12 THEN '0-12 Months'
    WHEN tenure <= 24 THEN '13-24 Months'
    WHEN tenure <= 48 THEN '25-48 Months'
    ELSE '49+ Months'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  SUM(Churn_Flag) AS churned_customers,
  ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `avid-lacing-483619-b2.telco_customer_churn.customer_churn_cleaned`
GROUP BY tenure_group
ORDER BY churn_rate DESC;
```

Churn Rate By High Risk
```
SELECT
  Contract,
  InternetService,
  PaymentMethod,

  COUNT(*) AS total_customers,

  SUM(Churn_Flag) AS churned_customers,

  ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate

FROM `avid-lacing-483619-b2.telco_customer_churn.customer_churn_cleaned`

GROUP BY
  Contract,
  InternetService,
  PaymentMethod

HAVING COUNT(*) > 50

ORDER BY churn_rate DESC;
```

Churn Rate Overall
```
SELECT
  COUNT(*) AS total_customers,
  SUM(Churn_Flag) AS churned_customers,
  ROUND(SUM(Churn_Flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `avid-lacing-483619-b2.telco_customer_churn.customer_churn_cleaned`;
```
