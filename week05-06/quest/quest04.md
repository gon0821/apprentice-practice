
# テーブルを作成・修正・削除できる

作成済みのデータベースを指定して MySQL に接続してください。MySQL に接続後、使用するデータベースを指定しても大丈夫です。

## 1. テーブルの作成
任意のテーブルを作成してください。テーブルのカラムは自由に作成してください。
```sql
  CREATE TABLE テーブル名 (
    カラム名1 データ型1(長さ) 制約1,
    カラム名2 データ型2(長さ) 制約2,
    ...,
    カラム名N データ型N(長さ) 制約N,
    テーブルの制約1,テーブルの制約2
);
```

## 2. テーブルの表示

テーブルが作成できたことを確認するために、テーブルの一覧を表示してください。
```sql
  SHOW TABLES;
```
## 3. カラムの追加

作成したテーブルに、任意のカラムを一列追加してください。
```sql
  ALTER TABLE テーブル名 ADD COLUMN カラム名 データ型(長さ) 制約;
  ALTER TABLE members ADD COLUMN age INTEGER;
```
## 4. カラムの表示

カラムが追加できたことを確認するために、テーブルのカラムの一覧を表示してください。
```sql
  SHOW COLUMNS FROM members;
```
## 5. カラムの削除

追加したカラムを削除してください。削除後、削除できていることを確認してください。
```sql
  ALTER TABLE テーブル名 DROP COLUMN カラム名;
  ALTER TABLE members DROP COLUMN age;
```

## 6. テーブルの削除

作成したテーブルを削除してください。削除後、削除できていることを確認してください。
```sql
  DROP TABLE members;
```

## 7. テーブルの再作成

再度テーブルを作成しましょう。

今後、作成したテーブルを指定して作業します。
