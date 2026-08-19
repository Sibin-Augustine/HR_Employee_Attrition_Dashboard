WITH Salaray_Group_Table AS
  (SELECT (CASE
               WHEN monthlyincome <5000 THEN 'Up to 5k'
               WHEN monthlyincome BETWEEN 5000 AND 10000 THEN '5k-10k'
               WHEN monthlyincome BETWEEN 10000 AND 15000 THEN '10k-15k'
               ELSE '15k+'
           END) AS "Salary Slab",
          Attrition
   FROM HR_Analytics)
SELECT Salaray_Group_Table."Salary Slab",
       SUM(CAST(Salaray_Group_Table.Attrition AS int)) AS "Attrition Count"
FROM Salaray_Group_Table
GROUP BY Salaray_Group_Table."Salary Slab"
ORDER BY "Attrition Count" DESC;