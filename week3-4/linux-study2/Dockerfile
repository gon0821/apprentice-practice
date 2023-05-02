# Ubuntu LTS版の最新バージョンをdockerhubのイメージから取ってくる
FROM ubuntu:22.04

# Ubuntuの機能を全て使うための記述（通常は最小限のパッケージで構成されている）
RUN yes | unminimize

# パッケージリストを更新し、より新しいバージョンのパッケージをインストールするための記述
RUN apt-get update && \
# 必要なパッケージをインストール（今回はvim, tmux, lessをインストール）
    apt-get install -y --no-install-recommends \
    locales vim tmux less bc \
    language-pack-ja-base language-pack-ja && \
    locale-gen ja_JP.UTF-8 && \
    update-locale LANG=ja_JP.UTF-8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 非対話型でtzdataパッケージ（タイムゾーンに関連する情報を提供）をインストール
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata

# Ubuntuを日本語化
RUN locale-gen ja_JP.UTF-8

# 環境変数LANGを設定
ENV LANG = ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# 環境変数TZ（タイムゾーン）を設定
ENV TZ = Asia/Tokyo
