# Stock Market Analysis

## Overview
This analysis examined nearly 100 years of S&P 500 market data using Python, Pandas, and data visualization techniques to evaluate long-term market performance, volatility, and investor behavior. Through exploratory data analysis, feature engineering, moving average calculations, and rolling volatility measurements, key market trends and historical turning points were identified. The analysis also investigated major economic events, including the Great Depression, the 2008 Financial Crisis, and the COVID-19 market crash, to better understand how periods of uncertainty affect market performance.

## Business Question
- What is the overall trend?
- Highest closing price?
- Lowest closing price?
- Average trading volume?
- Best month?
- Worst month?
- Most volatile period?

The analysis found that the strongest average annual market performance occurred in 1933, with an average daily return of approximately 0.20%, reflecting the market recovery that followed the depths of the Great Depression. Conversely, 1931 produced the weakest annual performance, with an average daily return of approximately -0.22%, highlighting the severity of the economic contraction during that period.

Trading activity reached its highest recorded level on October 10, 2008, during the Global Financial Crisis, when daily volume exceeded 11.4 billion shares. This surge in activity reflected heightened uncertainty and significant investor reactions to rapidly changing market conditions.

Volatility analysis revealed that the most turbulent period in the dataset occurred during November 1929, immediately following the stock market crash that marked the beginning of the Great Depression. Elevated volatility persisted throughout this period as markets experienced significant declines and uncertainty.

Overall, the analysis demonstrates the long-term resilience of the U.S. equity market despite periods of severe economic disruption. While market crises generate substantial declines and volatility in the short term, historical data shows that markets have consistently recovered and continued their long-term growth trajectory.


## Tools Used
- Python / Pandas
- Excel

## Process
1. Cleaned the data
2. Explored trends
3. Built visualizations
4. Created recommendations

## Key Insights
- Long-Term Market Resilience

Despite experiencing multiple recessions, financial crises, and periods of extreme uncertainty, the S&P 500 exhibited a strong long-term upward trend across nearly a century of historical data.
- Best and Worst Performing Years

The strongest annual performance occurred in 1933, with an average daily return of approximately 0.20%, reflecting the market recovery following the most severe phase of the Great Depression. The weakest performance occurred in 1931, when average daily returns fell to approximately -0.22%, illustrating the depth of the economic downturn.
- Extreme Volatility During the Great Depression

The highest rolling volatility in the dataset occurred on November 19, 1929. This period immediately followed the historic stock market crash and demonstrated the significant uncertainty and instability that characterized the early stages of the Great Depression.
- Trading Volume Peaks During Financial Crises

The highest trading volume was recorded on October 10, 2008, during the Global Financial Crisis, when more than 11.4 billion shares changed hands. Elevated trading activity during this period reflected widespread investor concern and rapidly changing market expectations.
- Moving Averages Highlight Major Market Cycles

Short-term and long-term moving averages effectively identified periods of market expansion and contraction. Extended periods below the 200-day moving average frequently aligned with broader economic downturns, while sustained recoveries above the long-term trend signaled renewed market strength.
- Financial Crises Produce Different Recovery Patterns

The 2008 Financial Crisis resulted in a prolonged market decline and recovery period, whereas the COVID-19 market crash produced a sharp decline followed by a comparatively rapid recovery. These differences demonstrate how economic conditions and policy responses influence market behavior.

## Python Analysis

[Python Analysis Link](/projects/stock_market_analysis/python/stock_market_analysis.ipynb)

## Dashboard / Visuals
![Daily Returns](/projects/stock_market_analysis/visualizations/avg_annual_daily_returns.png)
![Closing Price Over Time](/projects/stock_market_analysis/visualizations/closing_price_over_time.png)
![Moving AVG](/projects/stock_market_analysis/visualizations/moving_avg.png)
![Volatility](/projects/stock_market_analysis/visualizations/volatility.png)
![2008 Market Crash](/projects/stock_market_analysis/visualizations/2008_financial_crisis.png)
![Covid_19 Market Crash](/projects/stock_market_analysis/visualizations/covid_19_market_crash.png)
