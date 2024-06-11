select a.emp_name,
       b.dept_title
from employee a
join department b on a.dept_code = b.dept_id;

select a.emp_name,
       b.job_name
from employee a
join job b using (job_code);

select a.*,
       b.dept_title
from employee a
left join department b on a.dept_code = b.dept_id;

select a.emp_name 사원명,
       b.emp_name 관리자명
from employee a
join employee b on a.manager_id = b.emp_id;