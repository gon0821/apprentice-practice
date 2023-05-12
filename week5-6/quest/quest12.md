# スタイルガイドに則ってクエリを書ける

スタイルガイドとは共通のコードの書き方の書式・ルールについてまとめたものです。スタイルガイドに従うことで読みやすい SQL クエリを書くことができます。

## 1. スタイルガイド

[SQL スタイルガイド](https://www.sqlstyle.guide/ja/)を一通り読んでください。文章が読みづらい場合は SQL クエリの箇所だけ見て、SQL クエリの書式を把握してください。

### 列
* 常に単数形の名前を使用する。
* 主キーに単純にidを使うのは極力避ける。
* 表と同じ名前の列を追加しない。逆もまた同様である。
* 固有名詞など意味のある場合を除いて、常に小文字を使用する。

### 統一的接尾辞
以下の接尾辞は一般的意味を持ち、SQLコードから列を読み取り理解しやすくする。適切な箇所で正しい接尾辞を使用すること。

* _id - 主キーである列など一意の識別子。
* _status - flag値または任意のタイプの状況を表す（例: publication_status）。
* _total - 値の集合の合計または総計。
* _num - フィールドに数値が含まれていることを表す。
* _name - first_nameのように名前を強調する。
* _seq - 連続した数値を含む。
* _date - 何かの日付を含む列であることを表す。
* _tally - カウント。
* _size - ファイルサイズや衣類などのサイズ。
* _addr - 有形無形のデータのアドレス（例: ip_addr

### スペース・改行・行間
以下の場合は常にスペースを入れる。

* イコール（=）の前後
* カンマ（,）の後
* アポストロフィ（'）の外側（括弧内またはカンマやセミコロンが後に来る場合は除く）

以下のものは常に改行や空行を入れる。

* ANDまたはORの前
* セミコロンの後。問合せを分けて読みやすくするため。
* キーワードの定義後。
* 複数の列を論理的なグループに分けたコンマの後。
* コードを関連するセクション単位に分離する場合。これはひとまとまりの大きなコードの可読性を向上させる。

## 2. スタイルガイドに則る

今後 SQL クエリを書く際はスタイルガイドに則って書く。