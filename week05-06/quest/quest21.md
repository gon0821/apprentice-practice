# テーブルを定義できる

テーブル定義では各テーブルに対して、テーブル名、カラム名、データ型、NULL(NULL OK の場合のみ YES と記載)、キー（キーが存在する場合、PRIMARY/INDEX のどちらかを記載）、初期値（ある場合のみ記載）、AUTO INCREMENT（ある場合のみ YES と記載）、外部キー制約、ユニークキー制約を定義します。

## 1. データ型

データ型とは何か、データベース初心者にわかるように説明してください。
```
データの種類を表すのがデータ型
・INTEGER　→　整数を入れる列に指定
・VARCHAR　→　文字列を入れる列に指定、可変長文字列
・DATE　→　日付（年月日）を入れる列に指定
```
## 2. NULL

NULL とは何か、データベース初心者にわかるように説明してください。
```
値が不明、値が分からない状態。
表においてNULLは空欄の状態である。
```

## 3. プライマリーキー

プライマリーキーとは何か、データベース初心者にわかるように説明してください。
```
その値を指定すれば、必ず1行のレコードを特定できる列の組み合わせ、主キーとも言う。
テーブルにおいて必ず1つ存在し、また1つしか存在しない。
```

## 4. 初期値

テーブル定義における初期値(デフォルト値)とは何か、データベース初心者にわかるように説明してください。
```
データ登録時に該当列が空白だった際に指定のデフォルト値を入れる。
```

## 5. AUTO INCREMENT

AUTO INCREMENT とは何か、データベース初心者にわかるように説明してください。
```
主に一意の識別子（ID）を自動的に生成して、新しいレコードに割り当てるために使用される。
新しい行が挿入されるたびに、自動的にインクリメント（増加）される整数値が入力される。
```

## 6. 外部キー制約

外部キー制約とは何か、データベース初心者にわかるように説明してください。
```
他のテーブルのデータを参照するようにカラムにつける制約
【ポイント】
・外部キーに使用する列は何らかのコードやID等の表記体系の定まったデータを用いる。
自由な可変長文字列だと区別がつきにくいといった問題が起こりうる。
・親テーブルに存在しているデータしか子テーブルには保存できないため、他のテーブルの列を参照する場合は設定すること。
```

## 7. ユニークキー制約

ユニークキー制約とは何か、データベース初心者にわかるように説明してください。
```
重複を許さない列の組み合わせ。ユニーク制約、一意制約とも言う。
メアドや電話番号など、重複を排除したい列に設定する。
```

## 8. テーブル定義

EC サイトの ER 図を、テーブル定義しましょう。各テーブルのテーブル名、カラム名、データ型、NULL(NULL OK の場合のみ YES と記載)、キー（キーが存在する場合、PRIMARY/INDEX のどちらかを記載）、初期値（ある場合のみ記載）、AUTO INCREMENT（ある場合のみ YES と記載）、外部キー制約、ユニークキー制約を設定してください。

以下、アウトプット例です。

テーブル：users

|カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|
| ---- | ---- | ---- | ---- | ---- | ---- |
|id|bigint(20)||PRIMARY||YES|
|name|varchar(100)|||||
|email|varchar(100)||INDEX|||

- ユニークキー制約：email カラムに対して設定

テーブル：comments

|カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|
| ---- | ---- | ---- | ---- | ---- | ---- |
|id|bigint(20)||PRIMARY||YES|
|user_id|bigint(20)|YES|INDEX|0||
|content|text|||||

- 外部キー制約：user_id に対して、users テーブルの id カラムから設定

なお、アウトプットはテキストでしていただいてもよいですし、SpreadSheet 等を用いて表形式でしていただいても大丈夫です。

テーブル：users

|カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|
| ---- | ---- | ---- | ---- | ---- | ---- |
|user_id|bigint(20)||PRIMARY||YES|
|user_name|varchar(100)|||||

テーブル：categories

|カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|
| ---- | ---- | ---- | ---- | ---- | ---- |
|category_id|bigint(20)||PRIMARY||YES|
|category_name|varchar(100)|||||

- ユニークキー制約：category_name カラムに対して設定

テーブル：items

|カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|
| ---- | ---- | ---- | ---- | ---- | ---- |
|item_id|bigint(20)||PRIMARY||YES|
|item_name|varchar(100)|||||
|category_id|bigint(20)|||||
|price|bigint(20)|||||

- 外部キー制約：category_id に対して、categories テーブルの category_id カラムから設定

テーブル：purchase_logs

|カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|
| ---- | ---- | ---- | ---- | ---- | ---- |
|user_id|bigint(20)|||||
|item_id|bigint(20)|||||
|purchase_date|date|||||

- 外部キー制約：user_id に対して、users テーブルの user_id カラムから設定
- 外部キー制約：item_id に対して、items テーブルの item_id カラムから設定
