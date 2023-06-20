# パスワードマネージャー

**パスワードマネージャー**とは、IDとパスワードを安全に管理し、必要になった際に出力するためのツールです。多くのサービスでログイン時にパスワードが必要となりますが、全てを覚えるのは困難ですし、覚えやすいパスワードを使い回すのはセキュリティ上危険です。

そこで、各サービスのID・パスワードを保存し、サービス名を入力したらそのサービスのID・パスワードが表示されるパスワードマネージャーを作成しました。

## 目次
１．[機能・特徴](#１機能・特徴)

２．[使用方法](#２使用方法)

３．[実行例](#３実行例)

４．[備考](#４備考)

５．[工夫した点・改善点](#５工夫した点・改善点)

***

## １．機能・特徴
- 各サービスごとにID・パスワードを保存
- 入力された各サービスごとにID・パスワードを表示

## ２．使用方法
### (1)パスワードマネージャー起動
シェルスクリプト(passwd.sh)が保存されているディレクトリにて以下の呼び出しを行ってください。

▼呼び出し
```bash
./passwd.sh
```

シェルスクリプトを実行すると、以下のメニューが表示されます。
```bash
パスワードマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
```

### (2)ID・パスワードを保存【Add Password】
「Add Password」を選択すると、以下の情報を保存できます。
- サービス名
- ユーザー名
- パスワード

画面には以下が表示されますので各項目を入力してください。

```bash
次の選択肢から入力してください(Add Password/Get Password/Exit)：Add Password
サービス名を入力してください：
ユーザー名を入力してください：
パスワードを入力してください：
# 入力が完了したら
パスワードの追加は成功しました。
```

### (3)ID・パスワードを表示【Get Password】
「Get Password」を選択し、登録されているサービス名を入力すると以下の情報を表示できます。
- ユーザー名
- パスワード

画面には以下が表示されますので各項目を入力してください。

```bash
次の選択肢から入力してください(Add Password/Get Password/Exit)：Get Password
サービス名を入力してください：
#サービス名が登録されていれば
service name :
user name :
password :
```

### (4)パスワードマネージャー終了【Exit】
「Exit」を選択すると、以下の画面の通りパスワードマネージャーが終了します。

```bash
次の選択肢から入力してください(Add Password/Get Password/Exit)：Exit
Thank you!
```

## ３．実行例

```bash
パスワードマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：

# Add Password が入力された場合
サービス名を入力してください：Amazon
ユーザー名を入力してください：user01
パスワードを入力してください：1996tennis

パスワードの追加は成功しました。
次の選択肢から入力してください(Add Password/Get Password/Exit)：

# Get Password が入力された場合
サービス名を入力してください：Amazon
## サービス名が保存されていなかった場合
そのサービスは登録されていません。
## サービス名が保存されていた場合
サービス名：Amazon
ユーザー名：user01
パスワード：1996tennis

次の選択肢から入力してください(Add Password/Get Password/Exit)：

# Exit が入力された場合
Thank you!
## プログラムが終了

# Add Password/Get Password/Exit 以外が入力された場合
入力が間違えています。Add Password/Get Password/Exit から入力してください。
```

## ４．備考
「Add Password」で登録された情報は

ホームディレクトリ$HOME/saved_passwd/managed_file.txt

へ保存されているので、登録されている情報の一覧を閲覧したい場合はこちらより確認してください。

## ５．工夫した点・改善点
### 工夫した点
* シェル関数を用いることにより機能ごとにコードを分けることができ、機能の確認がしやすくなりました。
* パスワード管理ファイルを常に同じディレクトリに保存するようにしました。

### 改善点
* パスワードが保存されたファイルは直接確認が可能でありセキュリティ上危険性が高いため、ファイルを暗号化したいです。