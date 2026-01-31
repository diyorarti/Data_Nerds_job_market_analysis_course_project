-- Importing job_postings.csv dataset using COPY 
COPY job_postings
FROM 'D:\Users\User\SQL\Data_Nerds_job_market_analysis_course_project\dataset\job_postings.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Importing company_dim.csv dataset using COPY
COPY company_dim
FROM 'D:\Users\User\SQL\Data_Nerds_job_market_analysis_course_project\dataset\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- importing skills_dim.csv dataset using COPY 
COPY skills_dim
FROM 'D:\Users\User\SQL\Data_Nerds_job_market_analysis_course_project\dataset\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Importing skills_job_dim.csv dataset using COPY
COPY skills_job_dim
FROM 'D:\Users\User\SQL\Data_Nerds_job_market_analysis_course_project\dataset\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');