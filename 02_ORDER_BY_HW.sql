select salary
from employee
order by salary asc;

select salary
from employee
order by salary desc;

select salary
from employee
order by salary desc,
         emp_name;

select emp_id * salary as mult_salary
from employee
order by mult_salary desc;

select *
from employee
order by ent_yn desc;
-- order by field(ent_yn, 'Y', 'N');