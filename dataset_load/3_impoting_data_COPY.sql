/*
Importing job_postings.csv dataset using COPY 
*/
COPY job_postings
FROM 'D:\Users\User\SQL\Data_Nerds_job_market_analysis_course_project\dataset\job_postings.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- checking table
SELECT *
FROM job_postings
LIMIT 10;;