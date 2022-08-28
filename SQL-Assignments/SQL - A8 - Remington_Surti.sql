show databases
use fsds
show tables

delete from worker_clone where worker_id = 9
 
Select * from worker_clone

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