# RealWorld

ブログプラットフォームを作る [RealWorld](https://github.com/gothinkster/realworld/tree/main) という OSS のプロジェクトがあります。

RealWorld は実世界と同じ機能を持つプラットフォームを作ることで、学習したいフレームワークの技術を習得することを目的としてたプロジェクトです。

ここでは、[RealWorld のドキュメント](https://realworld-docs.netlify.app/docs/intro) を参照し、[RealWorld の バックエンドの API](https://realworld-docs.netlify.app/docs/specs/backend-specs/introduction) の仕様を満たす Rails API を作成します。



## 実装するAPI

RealWorld　の API のうち、次のエンドポイントを実装します。

1. Create Article
2. Get Article
3. Update Article
4. Delete Article

なお、Article に関わる要素のうち、認証機能及び著者、タグ、お気に入り(favorite) は実装しないものとします。

また、認証機能のない簡易バージョンの作成となります。


<details>
  <summary>1. Create Article 〜記事の作成〜</summary>

記事を作成するためのエンドポイントを実装します。
- **エンドポイント**
```
POST /api/articles
```

- **リクエストボディ**
```json
{
  "article": {
    "title": "The return of Otani",
    "description": "Major League Baseball News.",
    "body": "Otani hit three consecutive home runs."
  }
}
```

- **レスポンスボディ**
```json
{
    "article": {
        "slug": "the-return-of-otani",
        "title": "The return of Otani",
        "description": "Major League Baseball News.",
        "body": "Otani hit three consecutive home runs.",
        "createdAt": "2023-06-22T11:59:38.145Z",
        "updatedAt": "2023-06-22T11:59:38.145Z"
    }
}
```
</details>


<details>
  <summary>2. Get Article 〜記事の取得〜</summary>

記事を取得するためのエンドポイントを実装します。
- **エンドポイント**
```
GET /api/articles/:slug

ex) GET /api/articles/the-return-of-otani
```

- **レスポンスボディ**
```json
{
  "article": {
    "slug": "the-return-of-otani",
        "title": "The return of Otani",
        "description": "Major League Baseball News.",
        "body": "Otani hit three consecutive home runs.",
        "createdAt": "2023-06-22T11:59:38.145Z",
        "updatedAt": "2023-06-22T11:59:38.145Z"
    }
}
```
</details>

<details>
  <summary>3. Update Article 〜記事の更新〜</summary>

記事を更新するためのエンドポイントを実装します。

- **エンドポイント**
```
PUT /api/articles/:slug

ex) PUT /api/articles/the-return-of-otani
```

- **リクエストボディ**
  - title：「Shohei」を追加
  - body：「three」→「five」へ変更
```json
{
  "article": {
    "title": "The return of Shohei Otani",
    "body": "Otani hit five consecutive home runs."
  }
}
```

- **レスポンスボディ**
```json
{
  "article": {
    "slug": "the-return-of-shohei-otani",
        "title": "The return of Shohei Otani",
        "description": "Major League Baseball News.",
        "body": "Otani hit five consecutive home runs.",
        "createdAt": "2023-06-22T11:59:38.145Z",
        "updatedAt": "2023-06-22T12:13:13.144Z"
    }
}
```
</details>


<details>
  <summary>4. Delete Article 〜記事の削除〜</summary>

記事を削除するためのエンドポイントを実装します。

- **エンドポイント**
```
DELETE /api/articles/:slug

ex) PUT /api/articles/the-return-of-shohei-otani
```
</details>
