--Humans not only take debts to manage necessities. A country may also take debt to manage its economy. For example, infrastructure spending is one costly ingredient required for a country's citizens to lead comfortable lives. The World Bank is the organization that provides debt to countries.
--In this project, you are going to analyze international debt data collected by The World Bank. The dataset contains information about the amount of debt (in USD) owed by developing countries across several categories.

--1.What is the number of distinct countries present in the database? The output should be single row and column aliased as total_distinct_countries.Save the query as num_distinct_countries.
Select count(distinct(country_name)) as total_distinct_countries  from international_debt;
--2.What country has the highest amount of debt? Your output should contain two columns: country_name and total_debt and one row. Save the query as highest_debt_country.
Select country_name,sum(debt) as total_debt from international_debt 
group by country_name,debt
order by total_debt desc 
limit 1;
--3.What country has the lowest amount of principal repayments (indicated by the "DT.AMT.DLXF.CD" indicator code)? The output table should contain three columns: country_name, indicator_name, and lowest_repayment and one row, saved in the query lowest_principal_repayment.
select country_name, indicator_name, min(debt) as lowest_repayment 
from international_debt 
WHERE indicator_code='DT.AMT.DLXF.CD'
group by country_name, indicator_name
order by lowest_repayment 
limit 1;
