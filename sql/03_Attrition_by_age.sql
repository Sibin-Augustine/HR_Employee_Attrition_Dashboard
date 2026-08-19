WITH Age_Group_Table AS
  (SELECT (CASE
               WHEN age BETWEEN 18 AND 25 THEN '18-25'
               WHEN age BETWEEN 26 AND 35 THEN '26-35'
               WHEN age BETWEEN 36 AND 45 THEN '36-45'
               WHEN age BETWEEN 46 AND 55 THEN '46-55'
               ELSE '55+'
           END) AS "Age group",
          Attrition
   FROM HR_Analytics)
SELECT Age_Group_Table."Age group",
       SUM(CAST(Age_Group_Table.Attrition AS int)) AS "Attrition Count"
FROM Age_Group_Table
GROUP BY Age_Group_Table."Age group"
ORDER BY Age_Group_Table."Age group";
