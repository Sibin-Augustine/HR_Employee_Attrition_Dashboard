SELECT SUM(EmployeeCount) AS "Total Employee Count"
FROM HR_Analytics;


SELECT SUM(CAST(Attrition AS int)) AS "Attrition Count"
FROM HR_Analytics;


SELECT CAST(SUM(CAST(Attrition AS int))*100.00/SUM(EmployeeCount) AS DECIMAL (10, 2)) AS "Attrition Rate"
FROM HR_Analytics;


SELECT CAST(AVG(age*1.0) AS DECIMAL(5, 2)) AS "Average Employee Age"
FROM HR_Analytics;


SELECT CAST(AVG(MonthlyIncome*1.0) AS DECIMAL(10, 2)) AS "Average Monthly Salary"
FROM HR_Analytics;


SELECT CAST(AVG(Yearsatcompany*1.0) AS DECIMAL(5, 2)) AS "Average Years at company"
FROM HR_Analytics;
