show databases
use fsds
show tables

Select * from worker

<-----------------------Q1------------------------->

select First_name as Worker_Name from worker

<-----------------------Q2------------------------->

select distinct(Department) from worker

<-----------------------Q3------------------------->

select * from worker order by worker_id desc limit 5