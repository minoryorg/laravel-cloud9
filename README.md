# laravel-cloud9

Shell script for running "Laravel" with "Cloud 9" (Automatically installing PHP7 + Composer + Laravel)  
install.shは、オンラインIDEのCloud9でPHP7（7.1.8）とLaravel 5.5（2017年9月1日時点）が動作する環境を自動で構築するためのシェルスクリプトです。  

## 使い方

install.shをworkspaceの直下に置きます。  
そして、下記のように実行するだけです。  
※単純に実行するとエラーが出ます。  

    chmod 777 install.sh
    sed -i 's/\r//' install.sh
    ./install.sh

~~あとは、メッセージに従って[Enter]を押すなり、[Y][Enter]を押すなりしてください。~~  
  
「done!」が表示されれば完了です。  
以下、不要になりました。  

~~動作確認をする前に、ドキュメントルートの変更をお忘れなく。~~  

## ~~ドキュメントルートの変更方法~~
...  

## ~~データベースの作成方法~~
~~※データベース名とユーザー名のhomesteadとパスワードのsecretは.envのデフォルトです。~~  
...  

## その他
モジュール等が足りなければ適当に追加してください。  
インストールディレクトリを変更したければご自由に。  
