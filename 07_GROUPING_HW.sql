select avg(salary)
from employee
group by job_code;

select min(salary)
from employee
group by sal_level;

select count(*)
from employee
group by dept_code
having count(*) >= 3;

select avg(salary)
from employee
group by job_code
having avg(salary) >= 4000000;

select dept_code,
       job_code,
       sum(salary)
from employee
group by dept_code,
         job_code
with rollup;