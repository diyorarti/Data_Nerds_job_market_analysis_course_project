INSERT INTO job_applied 
    (
        job_id, 
        application_sent_date, 
        custom_resume, 
        resume_file_name, 
        cover_letter_sent, 
        cover_letter_file_name, 
        status
    ) VALUES (
        9, 
        '2023-10-01', 
        TRUE, 
        'resume.pdf', 
        TRUE, 
        'cover_letter.pdf', 
        'applied'
    ),
    (
        10, 
        '2023-10-02', 
        FALSE, 
        NULL, 
        FALSE, 
        NULL, 
        'rejected'
    ),
    (
        11, 
        '2023-10-03', 
        TRUE, 
        'resume2.pdf', 
        TRUE, 
        'cover_letter2.pdf', 
        'interview'
    ),
    (
        12, 
        '2023-10-04', 
        FALSE, 
        NULL, 
        FALSE, 
        NULL, 
        'withdrawn'
    ),
    (
        13, 
        '2023-10-05', 
        TRUE, 
        'resume3.pdf', 
        TRUE, 
        'cover_letter3.pdf', 
        'applied'
    ),
    (
        14, 
        '2023-10-06', 
        TRUE, 
        'resume4.pdf', 
        TRUE, 
        'cover_letter4.pdf', 
        'interview'
    ),
    (
        15, 
        '2023-10-07', 
        TRUE, 
        'resume5.pdf', 
        TRUE, 
        'cover_letter5.pdf', 
        'applied'
    );


SELECT *
FROM job_applied;


UPDATE job_applied
SET status = 'offer'
WHERE job_id = 11;

ALTER TABLE job_applied
RENAME COLUMN status to applied_status;

ALTER TABLE job_applied
ALTER COLUMN cover_letter_file_name TYPE INT;

ALTER TABLE job_applied
DROP COLUMN resume_file_name;

DROP TABLE job_applied;