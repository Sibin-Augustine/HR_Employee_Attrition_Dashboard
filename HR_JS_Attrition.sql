WITH One_Tab AS
  (SELECT JobRole AS "Job Role",
          SUM(CAST(attrition AS INT)) AS One
   FROM HR_Analytics
   WHERE JobSatisfaction=1
   GROUP BY JobRole),
     Two_Tab AS
  (SELECT JobRole AS "Job Role",
          SUM(CAST(attrition AS INT)) AS Two
   FROM HR_Analytics
   WHERE JobSatisfaction=2
   GROUP BY JobRole),
     Three_Tab AS
  (SELECT JobRole AS "Job Role",
          SUM(CAST(attrition AS INT)) AS Three
   FROM HR_Analytics
   WHERE JobSatisfaction=3
   GROUP BY JobRole),
     Four_Tab AS
  (SELECT JobRole AS "Job Role",
          SUM(CAST(attrition AS INT)) AS Four
   FROM HR_Analytics
   WHERE JobSatisfaction=4
   GROUP BY JobRole)
SELECT One_Tab."Job Role",
       One_Tab.One,
       Two_Tab.Two,
       Three_Tab.Three,
       Four_Tab.Four
FROM One_Tab
JOIN Two_Tab ON One_Tab."Job Role"=Two_Tab."Job Role"
JOIN Three_Tab ON Two_Tab."Job Role"=Three_Tab."Job Role"
JOIN Four_Tab ON Three_Tab."Job Role"=Four_Tab."Job Role";