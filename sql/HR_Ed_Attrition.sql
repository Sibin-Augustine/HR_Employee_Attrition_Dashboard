SELECT EducationField,
       CAST(SUM(CAST(Attrition AS int))*100.0/
              (SELECT SUM(CAST(Attrition AS Int))
               FROM HR_Analytics)AS DECIMAL(5, 0)) AS Attrition_Percentage
FROM HR_Analytics
GROUP BY EducationField
ORDER BY Attrition_Percentage DESC;