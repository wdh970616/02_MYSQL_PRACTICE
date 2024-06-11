select emp_name,
       salary
from employee
order by salary desc
limit 0, 5;

select emp_name,
       hire_date
from employee
order by hire_date desc
limit 0, 10;