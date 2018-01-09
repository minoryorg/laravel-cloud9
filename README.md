# laravel-cloud9

Shell script for running "Laravel" with "Cloud 9" (Automatically installing PHP7 + Composer + Laravel)  
install.shは、オンラインIDEのCloud9でPHP7（7.1.12）とLaravel 5.5.22とMySQL 5.7.20（2017年12月時点）が動作する環境を自動で構築するためのシェルスクリプトです。  

### 2018/1/9更新

* Adminerの追加

### 2017/12/27更新

* MySQL自動アップデート追加
* データベースの自動構築（.envのデフォルト）
* Laravel認証機能の追加
* ドキュメントルートの設定追加（.htaccessによる）
* Laravelの日本語化 (https://github.com/minoryorg/laravel-resources-lang-ja)

## 使い方

install.shをworkspaceの直下に置きます。  

    wget https://raw.githubusercontent.com/minoryorg/laravel-cloud9/master/install.sh

そして、下記のように実行するだけです。  
※単純に実行するとエラーが出ます。  

    chmod 777 install.sh
    sed -i 's/\r//' install.sh
    ./install.sh

~~あとは、メッセージに従って[Enter]を押すなり、[Y][Enter]を押すなりしてください。~~  
  
「done!」が表示されれば完了です。  

以下も不要になりました。  

~~動作確認をする前に、ドキュメントルートの変更をお忘れなく。~~  

## ~~ドキュメントルートの変更方法~~

## ~~データベースの作成方法~~

## その他
モジュール等が足りなければ適当に追加してください。  
インストールディレクトリを変更したければご自由に。  
