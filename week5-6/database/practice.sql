CREATE table classmate
  (id                INTEGER,
  name               VARCHAR(100) NOT NULL,
  birthday DATE NOT NULL,
  PRIMARY KEY (id));

CREATE table members
  (id INTEGER NOT NULL,
  name VARCHAR(128) NOT NULL,
  );

SELECT
  DISTINCT(dept_no) AS uniq_dept_no
FROM
  dept_manager;

SELECT
  *
FROM
  employees
ORDER BY
  birth_date ASC,
  emp_no DESC
LIMIT 100;
