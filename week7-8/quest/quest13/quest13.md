1. DOMとは
DOM とは何で、なんのためにあるのか、プログラミング初心者にわかるように説明してください。なお、DOM　とは API の一つなのですが、API とは何かも説明してください。

※ヒント: DOM はクライアントサイド（ブラウザ上でプログラムを実行する）に限定した話です。JavaScript の仕様そのものではないので区別して理解しましょう。HTML の操作をしたいときに JavaScript から DOM を利用するということであり、JavaScript と DOM は別物です。

### DOMとは

DOM（Document Object Model）とは、HTMLやXML文書の構造を表現するための規則や仕様です。DOMはツリー構造を形成し、そのツリーの各ノードは文書内の各パート（たとえば、タグ、属性、テキストなど）を表します。例えば、HTML文書ではbodyタグ、divタグ、h1タグなどが各ノードになります。

DOMはプログラムから文書の構造や内容を操作できるようにするためのAPI（Application Programming Interface）の一つでもあります。JavaScriptなどの言語を使ってDOMを操作することで、ウェブページの動的な操作（例えば、要素の追加や削除、テキストの変更、スタイルの適用など）が可能になります。

したがって、DOMはウェブブラウザがHTML文書をどのように解釈し、またJavaScript等がその文書をどのように操作できるかを定義する枠組みと言えます。

### APIとは

API（Application Programming Interface）とは、あるソフトウェアやシステムの機能を外部から利用するための「接続口」や「手続き」のようなものです。APIを利用することで、開発者はそのソフトウェアやシステムの内部の詳細を知らなくても、定められた方法で機能を利用することができます。

例えば、DOM APIはブラウザが提供するAPIの一つで、JavaScriptからウェブページの内容を操作するための手続きを定義しています。開発者はDOM APIを通じて、HTML文書の要素を選択したり、新たな要素を作成したり、要素の内容を変更したりすることができます。

以上のように、DOMとAPIはウェブ開発における重要な概念です。DOMを理解し、APIを利用することで、ウェブページに動的な操作を加えることができます。

2. 要素ノードの変更
JavaScript を使って、h1 タグのテキストを「シンプルブログ」変更してください。
```JS
  const elem = document.querySelector('#blog');
  elem.innerHTML = 'シンプルブログ';
```

3. イベントハンドラの設定
JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームに入力された内容（タイトルと本文）をコンソールに出力するようにしてください。
```JS
const demoForm = document.getElementById('demoForm');

demoForm.addEventListener('submit', function(event){
  event.preventDefault();

  const title = document.getElementById('title');
  console.log(title.value);
  const content = document.getElementById('content');
  console.log(content.value);
});
```

4. 要素ノードの追加
JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームの内容を #posts の div タブ内に、以下の形式で表示するようにしてください。
```JS
  const demoForm = document.getElementById('demoForm');
const posts = document.getElementById('posts');

demoForm.addEventListener('submit', function (event) {
  event.preventDefault();

  const title = document.getElementById('title');
  const content = document.getElementById('content');

  const element_h2 = document.createElement('h2');
  element_h2.innerHTML = title.value;
  posts.appendChild(element_h2);

  const element_p = document.createElement('p');
  element_p.innerHTML = content.value;
  posts.appendChild(element_p);

});
```

5. 要素ノードの追加
JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームの中身を空にしてください。
```JS
// 4のコードの続きに
  title.value = '' ;
  content.value = '' ;
```


6. スタイルの変更
```JS
// ５のコードの続きに
const postForm = document.getElementById('post-form');
postForm.addEventListener('mouseover', function() {
  this.classList.remove('form-color-off');
  this.classList.add('form-color');
});

postForm.addEventListener('mouseout', function() {
  this.classList.remove('form-color');
  this.classList.add('form-color-off');
});
```

7. 要素ノードの削除
```JS
// ４のコードに追加
const posts = document.getElementById('posts');

demoForm.addEventListener('submit', function (event) {
  event.preventDefault();

  const title = document.getElementById('title');
  const content = document.getElementById('content');

  const element_h2 = document.createElement('h2');
  element_h2.innerHTML = title.value;
  posts.appendChild(element_h2);

  const element_p = document.createElement('p');
  element_p.innerHTML = content.value;
  posts.appendChild(element_p);

  title.value = '' ;
  content.value = '' ;
  // ７．要素ノードの削除
  numberOfChildren = posts.children.length;
  if (numberOfChildren > 6) {
    posts.removeChild(posts.firstChild);
    posts.removeChild(posts.firstChild);
  }
});

```
