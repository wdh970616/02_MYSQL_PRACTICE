select a.emp_name,
       b.job_name,
       a.salary
from employee a
         join job b using (job_code)
where dept_code = (select dept_id
                   from department
                   where dept_title = '해외영업1부');

select emp_name,
       salary
from employee
where salary > (select avg(salary)
                from employee);

select a.emp_name,
       b.dept_title,
       a.salary
from employee a
         join department b on a.dept_code = b.dept_id
where salary = (select max(salary)
                from employee
                where dept_code = a.dept_code);

select a.emp_name,
       b.job_name,
       a.salary
from employee a
         join job b using (job_code)
where a.salary > (select avg(salary)
                  from employee
                  group by a.job_code);

select a.dept_title
from department a
where exists (select b.dept_code
              from employee b
              where b.dept_code = a.dept_id);

select a.emp_name,
       a.salary
from employee a
where not exists (select b.salary
                  from employee b
                  where b.salary > a.salary);

with employee as (select dept_title,
                           avg(a.salary)
                    from employee a
                    join department b on a.dept_code = b.dept_id
                    group by a.dept_code
                    having avg(salary) >= 4000000)
select *
from employee;