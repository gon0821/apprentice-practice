// ２.要素ノードの変更
const elem = document.querySelector('#blog');
elem.innerHTML = 'シンプルブログ';

// 3.イベントハンドラの設定
// JavaScript を使って、フォームの送信ボタンをクリックしたときに、フォームに入力された内容（タイトルと本文）をコンソールに出力するようにしてください。
const demoForm = document.getElementById('demoForm');

demoForm.addEventListener('submit', function(event){
  event.preventDefault();

  const title = document.getElementById('title');
  console.log(title.value);
  const content = document.getElementById('content');
  console.log(content.value);
});

// ４．要素ノードの追加
// const demoForm = document.getElementById('demoForm');
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

// ６．スタイルの変更
const postForm = document.getElementById('post-form');
postForm.addEventListener('mouseover', function() {
  this.classList.remove('form-color-off');
  this.classList.add('form-color');
});

postForm.addEventListener('mouseout', function() {
  this.classList.remove('form-color');
  this.classList.add('form-color-off');
});
