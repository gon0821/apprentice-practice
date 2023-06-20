#Dockerイメージとバージョンを指定
FROM mysql:8.0-debian

#パッケージリストを更新し、より新しいバージョンのパッケージをインストールするための記述
RUN apt-get update && \
#日本語を扱うために必要なパッケージをインストール
    apt-get install -y locales

#日本語を扱うための記述
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

#環境変数LANGを設定するための記述
ENV LANG=ja_JP.UTF-8

#環境変数TZを設定するための記述
ENV TZ=Asia/Tokyo
