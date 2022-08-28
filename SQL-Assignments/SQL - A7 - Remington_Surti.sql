show databases
use fsds
show tables
 
Select * from worker_clone

<-----------------------Q1------------------------->

Select * from Worker where worker_id % 2 != 0 

<-----------------------Q2------------------------->

CREATE TABLE worker_clone AS SELECT * FROM worker;