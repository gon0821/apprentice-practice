#!/bin/bash

echo "パスワードマネージャーへようこそ!!"

read -p "サービス名を入力してください : " service
read -p "ユーザー名を入力してください : " user
read -p "パスワードを入力してください : " passwd

# パスワードを管理するディレクトリの作成
directory="${HOME}/saved_passwd"

if [ ! -d "$directory" ]; then
        mkdir "$directory"
fi

# 入力完了したら管理ファイルへ保存
echo "${service} : ${user} : ${passwd}" >> "${directory}/managed_file1.txt"

echo "Thank you"
