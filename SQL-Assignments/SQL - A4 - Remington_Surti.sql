show databases
use fsds
show tables

Select * from worker

<-----------------------Q1------------------------->

Select REPLACE(FIRST_NAME,'a','A') as Replaced_FN from Worker

<-----------------------Q2------------------------->

Select * from Worker order by FIRST_NAME asc, department desc

<-----------------------Q3------------------------->

SELECT FIRST_NAME, SALARY from Worker WHERE SALARY=(SELECT max(SALARY) from Worker)
