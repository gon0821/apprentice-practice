# MVC について説明できる

##  MVC とは

MVC とは何か、プログラミング初心者にわかるように説明してください。その際に、MVC がなぜ必要なのか、Model とは何か、View とは何か、Controller とは何かも合わせて説明してください。

1. Viewとは
- ページの見た目を作るためのHTMLファイル
- ブラウザとRailsのやり取りの中で、Railsからビューが返され、ページが表示される。
- ビューはviewsフォルダの中に置かれる。

2. Controllerとは
- コントローラ内のメソッドを「アクション」という。
- コントローラ内のアクションは、ブラウザに返すビューをviewsフォルダの中から見つけ出す役割を担っている。
- アクションは、コントローラと同じ名前のビューフォルダから、アクションと同じ名前のHTMLファイルをさがしてブラウザに返す。

3. Rootingとは
- ブラウザとコントローラを繋ぐ役割を担うのがルーティング
- 送信されたURLに対して「どのコントローラの、どのアクション」で処理するかを決める「対応表」のこと
- 「get "URL" => "コントローラ#アクション名"」という文法で書かれる
