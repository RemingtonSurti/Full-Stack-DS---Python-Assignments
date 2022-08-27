show databases
use fsds
show tables

'query to add duplicate row'
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT, email) VALUES
		(009, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR','Monikagmail.com')
        
Select * from worker

<-----------------------Q1------------------------->

Select * from Worker where joining_date like "2014-02-%" 

<-----------------------Q2------------------------->

SELECT department, salary, joining_date, COUNT(*) as count_of_duplicates
FROM worker
GROUP BY department
HAVING COUNT(*) > 1
order by count_of_duplicates desc

<-----------------------Q3------------------------->

delete t1 FROM worker t1
JOIN worker t2
WHERE
    t1.worker_id > t2.worker_id AND
    t1.department = t2.department AND
    t1.joining_date = t2.joining_date AND
    t1.salary = t2.salary