# データを検索できる

## 1. 環境構築

## 2. 全カラムの取得

部署マネージャーの全データを取得してください。dept_manager テーブルの全データを * を指定して取得します。
```sql
SELECT
  COUNT(*)
FROM
  dept_manager
;
```

## 3. カラムの選択

部署マネージャーの従業員番号の一覧のみを取得してください。dept_manager テーブルの emp_no カラムの値のみを取得します。
```sql
SELECT
  emp_no
FROM
  dept_manager
;
```
## 4. カラム名の別名

部署マネージャーの従業員番号の一覧のみを、取得データの見出し（カラム）に「employee_no」という名前を付けて取得してください。
```sql
SELECT
  emp_no AS employee_no
FROM
  dept_manager
;
```

## 5. 重複行の削除

部署マネージャーが所属する部署番号を重複なく取得してください。dept_manager テーブルの dept_no カラムの値を、重複を削除して取得します。
```sql
SELECT
  DISTINCT dept_no
FROM
  dept_manager
;
```
