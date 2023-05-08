#!/bin/bash

# パスワード保存機能(Add Password)
add_password()
{
        read -p "サービス名を入力してください : " service
        read -p "ユーザー名を入力してください : " user
        read -p "パスワードを入力してください : " passwd

        # パスワードを管理するディレクトリの作成
        directory="${HOME}/saved_passwd"
        if [ ! -d "$directory" ]; then
                mkdir "$directory"
        fi
        # 入力完了したら管理ファイルへ保存
        echo "${service} : ${user} : ${passwd}" >> "${directory}/managed_file2.txt"

        echo "パスワードの追加は成功しました。"
}

# パスワード表示機能(Get Password)
get_password()
{
        read -p "サービス名を入力してください : " service

        file="${HOME}/saved_passwd/managed_file2.txt"

        # サービス名が管理ファイルに登録されていれば表示させる
        if grep -wq  "${service}" $file; then
                echo -n "service name : "
                grep -w "${service}" $file | awk '{print $1}'
                echo -n "user name : "
                grep -w "${service}" $file | awk '{print $3}'
                echo -n "password : "
                grep -w "${service}" $file | awk '{print $5}'
        else
                echo "そのサービスは登録されていません。"
        fi
}

# パスワードマネージャー　システムフロー
echo "パスワードマネージャーへようこそ!!"
read -p "次の選択肢から入力してください (Add Password / Get Password / Exit) :" option

while [ "$option" != Exit  ]
do
        case "$option" in
                "Add Password" )
                        add_password
                        ;;
                "Get Password" )
                        get_password
                        ;;
                *)
                        echo "入力が間違えています。 (Add Password / Get Password / Exit) の中から入力してください。"
                        ;;
        esac

        read -p "次の選択肢から入力してください (Add Password / Get Password / Exit) :" option

done

echo "Thank you!"
