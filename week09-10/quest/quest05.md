# API について説明できる

## 1. API とは

API とは何か、プログラミング初心者にわかるように説明してください。
- 「Application Programming Interface」の略称で、アプリケーションプログラミングインターフェースを指す。これはプログラムやソフトウェアが他のプログラムやソフトウェアと通信するための方法を提供するもの。
- APIはあるソフトウェアから別のソフトウェアに情報を送信するための橋渡し役となる。

## 2. エンドポイントとは

エンドポイントとは何か、プログラミング初心者にわかるように説明してください。

- 基本的には、特定のサービスやリソースにアクセスするためのURLの一部
- APIにおいてエンドポイントは特定の操作（データの取得、更新、削除など）を行う場所を指すもので、そのAPIの機能を表す。
- 通常、ベースURLとエンドポイントを組み合わせて表す。「http://api.example.com/users」　ならusersがエンドポイント
- エンドポイントにはHTTPメソッドが組み合わされて、それによりそのエンドポイントで何が行えるのかが決まる。

## 3. HTTP　リクエストと HTTP レスポンスとは

HTTP　リクエストと HTTP レスポンスとは何か、プログラミング初心者にわかるように説明してください。
- WebブラウザとWebサーバーの間で情報が交換されるとき、通常HTTPというプロトコルを使用します。HTTPリクエストとHTTPレスポンスはこの情報交換の基本的な部分
- HTTPリクエストはブラウザからサーバーへ送られるメッセージであり、このメッセージはブラウザがサーバーに何かを求めるときに送る。
- HTTPレスポンスは、そのリクエストに対する答え。例えば、ブラウザがHTMLのページを要求した場合、サーバーはそのページのHTMLを含むHTTPレスポンスを返す。

## 4. HTTP メソッドとは

HTTP メソッドとは何か、プログラミング初心者にわかるように説明してください。
- HTTPメソッドとは、クライアントがWebサーバーに対して何をしたいのかを指定するための方法。
- HTTPメソッドは、HTTPリクエストの一部で、それぞれが特定の操作を表す。
1. GET:   サーバーから情報を取得するために使用される。ブラウザがウェブページを表示するために使うメソッド
2. POST:  サーバーに情報を送信するために使用される。フォームを送信する際や新しいデータをサーバーに作成する際に使用される。
3. PUT:   サーバー上の既存の情報を更新するために使用される。POSTとの違いは、全体的な更新を行うことを意味する。
4. PATCH: サーバー上の既存の情報を部分的に更新するために使用される。
5. DELETE:サーバー上の情報を削除するために使用される。

## 5. JSON

JSON は API のリクエストとレスポンスで一般的に用いられるデータ形式です。以下のデータを JSON の形式で表現してください。

- 名前: 山田太郎
- 年齢: 20

```json
{
  "名前": "山田太郎",
  "年齢": 20
}
```

## 6. WebAPI作成手順
1. 画面遷移図を作る
2. APIの機能一覧を列挙する
3. URLとHTTPメソッドを設定する
4. リクエストパラメータを設計する
5. レスポンスデータを設計する
