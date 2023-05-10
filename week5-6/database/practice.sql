SELECT
  *
FROM
  departments AS d INNER JOIN current_dept_emp AS c
    ON d.dept_no=c.dept_no
WHERE
  c.to_date='9999-01-01'
LIMIT
  10;

SELECT
  d.dept_no,
  d.dept_name,
  s.salary
FROM
  salaries AS s
  INNER JOIN dept_manager AS m
    ON s.emp_no=m.emp_no
  INNER JOIN departments AS d
    ON m.dept_no=d.dept_no
WHERE
  m.to_date='9999-01-01'
  AND s.to_date='9999-01-01'
;
