# JavaScript について説明できる

## 1. JavaScript とは

JavaScript とは何か、HTML/CSS とはどのような関係にあるのか、プログラミング初心者にわかるように説明してください。
- JavaScriptは、Webページを動的で対話的にするためのプログラミング言語です。HTMLがWebページの構造を定義し、CSSがその見た目を設計する一方で、JavaScriptはそのページに動作や動きを追加します。
- HTMLは骨組み（基本的な構造）を、CSSは見た目（スタイル）を、そしてJavaScriptは動作（インタラクティビティ）をWebページに提供します。JavaScriptはHTMLとCSSで作られた静的なWebページに動的要素を追加することで、ユーザーとの対話を可能にします。

## 2. ECMAScript とは

ECMAScript とは何か、プログラミング初心者にわかるように説明してください。

なお、学習する際には ECMAScript 2015（ES2015）以降のバージョンを学習してください。
- ECMAScriptは、JavaScriptの標準仕様とも言えます。JavaScriptという言語が生まれた後、その仕様を標準化するためにECMAScriptが開発されました。
- JavaScriptはこのECMAScriptという標準をベースにしつつ、各ブラウザや実行環境により独自の機能やAPIを追加した形で実装されています。
- 標準仕様であるECMAScriptが定期的にバージョンアップされることによって、JavaScript言語自体も新機能が追加されたり、より効率的なコーディングが可能になったりしています。これにより、JavaScriptが現代のWeb開発において重要な言語であり続けている一因とも言えます。

## 3. 環境構築

JavaScript のコードを実行できるように環境を構築してください。

JavaScript の実行方法はいくつかあります。

1. ブラウザの開発者ツールのコンソールで実行する
2. ファイルを作成し、ブラウザで開く
3. Node.js をインストールし、コマンドラインで実行する

そのうち、本学習においては2を推奨します。1はちょっとした処理を実行するには便利ですが、書いたコードが手元に残らないため、復習しづらくなります。3は、Node.js のインストールが必要になるため、環境構築が面倒になります。2が一番手軽で、コードも手元に残り復習しやすいです。

以下、2の方法で環境構築を行います。

まず、任意のディレクトリに `hello.html` というファイルを作成してください。ファイル名は何でも構いません。学習トピックごとにファイルをわけ、トピックに関する名前をつけると復習しやすくなります。

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JavaScript学習</title>
</head>

<body>
  <script src="hello.js"></script>
</body>

</html>
```

次に、`hello.js` というファイルを作成してください。ファイル名は何でも構いません。

```js
console.log('Hello World');
```

最後に、`hello.html` をブラウザで開いてください。ブラウザの開発者ツールのコンソールに `Hello World` と表示されれば成功です。

なお、Visual Studio Code を使用されている場合は、[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) という拡張機能をインストールすると、ファイルを保存すると自動的にブラウザが更新されるため、便利です。
