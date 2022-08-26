show databases
use fsds
show tables

Select * from worker

<-----------------------Q1------------------------->

select RTRIM(First_name) as Worker_Name from worker

<-----------------------Q2------------------------->

select distinct(Department) as Department, character_length(Department) as length from worker

<-----------------------Q3------------------------->

delimiter &&
create procedure n_max_salaries(in var int)
begin
SELECT distinct Salary from worker order by Salary desc limit var;
end &&
delimiter ;

call n_max_salaries(5)