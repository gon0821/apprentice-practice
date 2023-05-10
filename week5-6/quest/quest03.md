# ユーザーを作成・権限付与・削除できる

(Root権限を持つユーザーで MySQL へ接続してください。)
```zsh
 docker-compose exec db mysql -u root -p
```

## 1. ユーザーの作成

MySQL のユーザーを作成してください。名前とパスワードは任意、ホストは localhost を指定してください。
```sql
  # 新しいユーザーを作成
  CREATE USER '新しいユーザー名'@'localhost' IDENTIFIED BY 'パスワード';
  CREATE USER 'naoki'@'localhost' IDENTIFIED BY 'pass';
```

## 2. ユーザーの表示

ユーザーを作成できたことを確認するために、ユーザーの一覧を表示してください。
```sql
  # データベース選択
  USE mysql;
  # ユーザー一覧を表示するために、user テーブルからデータを選択します。
  SELECT User, Host FROM user;
```
## 3. ユーザーへの権限付与

作成したユーザーに、MySQL 内のすべてのデータベースとテーブルへの root のフルアクセス権を付与してください。

なお、ユーザーへの権限付与を学習するために本問題を用意していますが、現場ですべてのデータベースへの root のフルアクセス権限を付与することはほぼありません。データベースのセキュリティを危険にさらす可能性があるためです。
```sql
  # 新しいユーザーに対して、すべてのデータベースとテーブルへのフルアクセス権限を付与します。
  GRANT ALL PRIVILEGES ON *.* TO '新しいユーザー名'@'ホスト名' WITH GRANT OPTION;
  GRANT ALL PRIVILEGES ON *.* TO 'naoki'@'localhost' WITH GRANT OPTION;
```
WITH GRANT OPTION を追加することで、このユーザーが他のユーザーに権限を付与することができるようになります。これにより、rootユーザーと同様の権限が与えられます。

## 4. 権限のリロード

ユーザーに権限を付与したら、すべての権限をリロードしてください。これにより設定が有効になります。
```sql
  # 権限の変更を反映させる
  FLUSH PRIVILEGES;
```
## 5. ユーザーの削除

作成したユーザーを削除してください。削除後、削除できていることを確認してください。
```sql
  # 権限の変更を反映させる
  FLUSH PRIVILEGES;
```
## 6. ユーザーの再作成

再度ユーザーを作成、権限付与、権限のリロードを行ってください。

今後は root ユーザーは基本的に使用せず、今回作成したユーザーを使用してください。