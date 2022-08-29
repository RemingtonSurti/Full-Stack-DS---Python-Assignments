show databases
use fsds
show tables
 
delete from worker where worker_id = 9
Select * from worker

<-----------------------Q1------------------------->

delimiter &&
create procedure nth_max_salary(in var int)
begin
select * from (select row_number() over (order by salary desc) as row_nm, first_name, salary from worker) as num where row_nm = var;
end &&
delimiter ;

call nth_max_salary(7)


<-----------------------Q2------------------------->

select distinct t1.first_name, t1.salary FROM worker t1
JOIN worker t2
WHERE
    t1.salary = t2.salary AND t1.worker_id != t2.worker_id