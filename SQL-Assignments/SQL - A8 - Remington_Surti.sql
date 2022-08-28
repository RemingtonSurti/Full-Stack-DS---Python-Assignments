show databases
use fsds
show tables
 
Select * from worker

<-----------------------Q1------------------------->

SELECT *
FROM Worker
WHERE Worker.worker_id 
IN (SELECT worker_clone.worker_id FROM worker_clone);


<-----------------------Q2------------------------->

SELECT *
FROM Worker
WHERE Worker.worker_id 
NOT IN (SELECT worker_clone.worker_id FROM worker_clone);