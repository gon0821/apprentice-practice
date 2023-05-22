## STEP2　テーブルを構築、データ挿入の手順について

### １．DockerCompose上でMySQLを起動させる

Dockerfile、docker-compose.ymlファイルがある「internet_tv」ディレクトリ内で下記コマンドを実行し、コンテナを起動させます。
```
docker-compose up -d
```

下記コマンドを実行し、起動中のコンテナに接続します。
```
docker-compose exec db /bin/bash
```

コンテナ内に入ったら下記コマンド実行後、パスワードを入力し、MySQLに接続します。
```
mysql -u root -p
```

### ２．データベースを確認し、テーブルを作成する。

下記コマンドより、データベース「internet_tv」が存在するか確認してください。
```sql
SHOW DATABASES;
```

下記コマンドより、データベースを選択します。
```sql
USE internet_tv;
```

下記コマンドより、テーブルを作成するSQL文が書かれたファイルを読み込んで実行することで、テーブルを作成します。
```
source /docker-entrypoint-initdb.d/create_table.sql
```

テーブルが作成されたか確認します。
```sql
SHOW TABLES;
```

### ３．サンプルデータを入力する。
下記コマンドより、サンプルデータを入力するSQL文が書かれたファイルを読み込んで実行することで、サンプルデータを各テーブルに入力します。
```
source /docker-entrypoint-initdb.d/insert_sampledata.sql
```

各テーブルにデータが入力されているか確認します。
```sql
SELECT * FROM テーブル名;
```
