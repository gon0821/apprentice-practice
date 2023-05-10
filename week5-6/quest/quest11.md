# テーブルを結合できる

## 1. 内部結合

部署マネージャーテーブルに、従業員テーブルのデータを内部結合させた全データを取得してください。
```sql
SELECT
  *
FROM
  employees AS e INNER JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
;
```

## 2. 列の選択

部署ごとに、部署番号、歴代のマネージャーの従業員番号、マネージャーのファーストネーム、マネージャーのラストネームを取得してください。
```sql
SELECT
  dm.dept_no,
  e.emp_no,
  e.first_name,
  e.last_name
FROM
  employees AS e INNER JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
;
```

## 3. 複数の内部結合

部署ごとに、部署番号、部署名、歴代のマネージャーの従業員番号、マネージャーのファーストネーム、マネージャーのラストネームを取得してください。
```sql
SELECT
  dm.dept_no,
  d.dept_name,
  e.emp_no,
  e.first_name,
  e.last_name
FROM
  employees AS e
    INNER JOIN dept_manager AS dm
      ON e.emp_no = dm.emp_no
    INNER JOIN departments AS d
      ON dm.dept_no = d.dept_no
ORDER BY
  dm.dept_no
;
```

## 4. 絞り込み

部署ごとに、部署番号、部署名、現在のマネージャーの従業員番号、マネージャーのファーストネーム、マネージャーのラストネームを取得してください。
```sql
SELECT
  dm.dept_no,
  d.dept_name,
  e.emp_no,
  e.first_name,
  e.last_name
FROM
  employees AS e
    INNER JOIN dept_manager AS dm
      ON e.emp_no = dm.emp_no
    INNER JOIN departments AS d
      ON dm.dept_no = d.dept_no
WHERE
  dm.to_date = '9999-01-01'
ORDER BY
  dm.dept_no
;
```

## 5. 給与

従業員番号10001から10010の従業員ごとに、ファーストネーム、ラストネーム、いつからいつまで給与がいくらだったかを取得してください。
```sql
SELECT
  e.emp_no,
  e.first_name,
  e.last_name,
  s.salary,
  s.from_date,
  s.to_date
FROM
  employees AS e
    INNER JOIN salaries AS s
      ON e.emp_no = s.emp_no
WHERE
  s.emp_no BETWEEN 100001 AND 100010
;
```

## 6. 内部結合と外部結合の違い

INNER JOIN と OUTER JOIN の違いについて、SQL 初心者にわかるように説明してください。またどのように使い分けるのかも合わせて説明してください。
```
INNER JOINは、結合されるテーブル間で、指定された条件に一致するレコードのみを結合します。一致しないレコードは結果から除外されます。

例えば、従業員テーブル（employees）と部署テーブル（departments）があり、各従業員がどの部署に所属しているかを知りたい場合、INNER JOINを使用できます。ただし、部署に所属していない従業員や、従業員がいない部署は結果に表示されません。

OUTER JOINは、指定された条件に一致しないレコードも結果に含める方法です。OUTER JOINには、LEFT OUTER JOIN（またはLEFT JOIN）、RIGHT OUTER JOIN（またはRIGHT JOIN）、およびFULL OUTER JOINの3種類があります。

・LEFT OUTER JOIN: 左側のテーブル（最初に指定されたテーブル）のすべてのレコードと、右側のテーブル（2番目に指定されたテーブル）の一致するレコードが結果に含まれます。右側のテーブルに一致しない場合は、NULL値が返されます。
・RIGHT OUTER JOIN: 右側のテーブルのすべてのレコードと、左側のテーブルの一致するレコードが結果に含まれます。左側のテーブルに一致しない場合は、NULL値が返されます。
・FULL OUTER JOIN: 両方のテーブルのすべてのレコードが結果に含まれます。どちらかのテーブルに一致しない場合は、NULL値が返されます。

一致するデータのみが必要な場合はINNER JOINを、一致しないデータも含めたい場合はOUTER JOINを使用します。
```
