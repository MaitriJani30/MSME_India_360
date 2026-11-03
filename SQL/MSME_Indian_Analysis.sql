CREATE DATABASE MSME_India_Analysis;


USE MSME_India_Analysis;

-- First, import the three CSV files into SQL Server as tables named:
-- MSME_Registrations
-- MSME_Employment_State
-- MSME_Credit_Support

-- 1. Check the table names in the database
SELECT Name FROM sys.tables;

SELECT * FROM MSME_Registrations;
SELECT * FROM MSME_Employment_State;
SELECT * FROM MSME_Credit_Support;

-- 2. Check the records in each table
SELECT COUNT(*) AS Total_Records
FROM MSME_Registrations;


SELECT COUNT(*) AS Total_Records
FROM MSME_Employment_State;


SELECT COUNT(*) AS Total_Records
FROM MSME_Credit_Support;


-- 3. Find the top 10 States/UTs by total MSME registrations
SELECT TOP 10 *
FROM MSME_Registrations
ORDER BY Total_MSME_Registrations DESC;



-- 4. States/UTs where Micro Enterprise Share is higher than 95%
SELECT State_UT,Micro_Enterprise_Share_Percent
FROM MSME_Registrations
WHERE Micro_Enterprise_Share_Percent > 95
ORDER BY Micro_Enterprise_Share_Percent DESC, State_UT;


-- 5. States/UTs with below-average credit per MSME
SELECT State_UT, ROUND(Average_Credit_Per_MSME_Lakh,2) AS Average_Credit_Per_MSME_Lakh
FROM MSME_Credit_Support
WHERE Average_Credit_Per_MSME_Lakh <
(
    SELECT AVG(Average_Credit_Per_MSME_Lakh)
    FROM MSME_Credit_Support
)
ORDER BY Average_Credit_Per_MSME_Lakh ASC;

-- 6. Classify States/UTs by MSME registrations

SELECT
    State_UT,
    Total_MSME_Registrations,
    CASE
        WHEN Total_MSME_Registrations >= 1000000 THEN 'High'
        WHEN Total_MSME_Registrations >= 500000 THEN 'Moderate'
        ELSE 'Low'
    END AS MSME_Ecosystem
FROM MSME_Registrations
ORDER BY Total_MSME_Registrations DESC;

DROP TABLE IF EXISTS #Avg_Emp_Per_MSME;

DROP TABLE IF EXISTS #MSME_Report;


-- 7. Calculating Average Employment per MSME and find the top 5 States/UTs.

SELECT  e.State_UT, r.Total_MSME_Registrations, e.Total_Employment, (CAST(e.Total_Employment AS DECIMAL(10,2))/r.Total_MSME_Registrations) AS Avg_Emp_Per_MSME
INTO #Avg_Emp_Per_MSME
FROM MSME_Employment_State e INNER JOIN  MSME_Registrations r ON e.State_UT = r.State_UT;


SELECT TOP 5 * FROM #Avg_Emp_Per_MSME
ORDER BY Avg_Emp_Per_MSME DESC;



-- 8. Join all three tables into one State/UT-wise report

SELECT
    MSME_Registrations.State_UT,
    MSME_Registrations.Total_MSME_Registrations,
    MSME_Registrations.Micro_Enterprise_Share_Percent,
    MSME_Employment_State.Total_Employment,
    MSME_Employment_State.Average_Employment_Per_MSME,
    MSME_Credit_Support.Number_of_MSME_Loans,
    MSME_Credit_Support.Disbursed_Amount_Crore,
    MSME_Credit_Support.Average_Credit_Per_MSME_Lakh

INTO #MSME_report

FROM MSME_Registrations

INNER JOIN MSME_Employment_State
    ON MSME_Registrations.State_UT =
       MSME_Employment_State.State_UT

INNER JOIN MSME_Credit_Support
    ON MSME_Registrations.State_UT =
       MSME_Credit_Support.State_UT;


-- 9. States/UTs with above-average MSME registrations 
-- but below-average credit per MSME and below-average employment per MSME
SELECT State_UT
FROM #MSME_Report
WHERE (
Total_MSME_Registrations > (SELECT AVG(Total_MSME_Registrations) FROM #MSME_Report)
AND 
Average_Credit_Per_MSME_Lakh < (SELECT AVG(Average_Credit_Per_MSME_Lakh) FROM #MSME_Report)
AND
Average_Employment_Per_MSME < (SELECT AVG(Average_Employment_Per_MSME) FROM #MSME_Report)
);