SELECT
	YEAR(from_date) as calendar_year, gender,
    COUNT(e.emp_no) as num_of_employees
FROM
	t_employees as e
    JOIN
    t_dept_emp as d ON d.emp_no = e.emp_no
GROUP BY calendar_year, e.gender
HAVING calendar_year >= 1990;