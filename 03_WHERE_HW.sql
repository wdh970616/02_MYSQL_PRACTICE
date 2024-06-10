select *
from employee
where dept_code = 'D1';

select *
from employee
where salary >= 5000000;

select *
from employee
where dept_code = 'D1'
and salary >= 3000000;

select *
from employee
where dept_code = 'D1'
or job_code = 'J4';

select *
from employee
where salary between 2000000 and 4000000;

select *
from employee
where emp_name like '%김%';

select *
from employee
where emp_name like '이%';

select *
from employee
where email like '%greedy.com';

select *
from employee
where emp_name like '송%기';
-- where emp_name like '송_기';

select *
from employee
where phone not like '010%';

select *
from employee
where dept_code in ('D1', 'D2', 'D3');

select *
from employee
where job_code not in ('J1', 'J2', 'J3');

select *
from employee
where sal_level in ('S1', 'S2', 'S3');

select *
from employee
where dept_code is null;

select *
from employee
where email is not null;