# laravel-cloud9
Shell script for running "Laravel 5.5" with "Cloud 9" (Automatically installing PHP7 + Composer + Laravel 5.5)
install.shは、オンラインIDEのCloud9でLaravel 5.5が動作する環境を自動で構築するためのシェルスクリプトです。

## 使い方

install.shをworkspaceの直下に置きます。
そして、下記のように実行するだけです。
※単純に実行するとエラーが出ます。

    chmod 777 install.sh
    sed -i 's/\r//' install.sh
    ./install.sh

あとは、メッセージに従って[Enter]を押すなりしてください。
「done!」が表示されれば完了です。

動作確認をする前に、ドキュメントルートの変更をお忘れなく。

## ドキュメントルートの変更方法

    sudo vim /etc/apache2/sites-enabled/001-cloud9.conf
    DocumentRoot /home/ubuntu/workspace/public #2行目
    <Directory /home/ubuntu/workspace/public> #10行目

## その他
モジュール等が足りなければ適当に追加してください。
インストールディレクトリを変更したければご自由に。
