SELECT Department,
       SUM(CAST(Attrition AS INT)) AS "Attrition Count"
FROM HR_Analytics
GROUP BY Department
ORDER BY "Attrition Count" DESC;


SELECT Yearsatcompany AS "Years at company",
       SUM(CAST(Attrition AS INT)) AS "Attrition Count"
FROM HR_Analytics
WHERE Yearsatcompany<16
GROUP BY Yearsatcompany
ORDER BY Yearsatcompany
