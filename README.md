# laravel-cloud9

Shell script for run "Laravel" on "Cloud9" (Automatically install PHP7 + MySQL5.7 + Laravel5.5) 
install.shは、オンラインIDEのCloud9でPHP 7.1.13とMySQL 5.7.21とLaravel 5.5.28（2018年2月時点）が動作する環境を自動で構築するためのシェルスクリプトです。  

### 2018/2/9更新

* 文字コード変更
* 改行コードをLFに変更（実行時のコマンド1行不要）
* Laravelの 5.5.* に固定

### 2018/1/9更新

* Adminerの追加

### 2017/12/27更新

* MySQL自動アップデート追加
* データベースの自動構築（.envのデフォルト）
* Laravel認証機能の追加
* ドキュメントルートの設定追加（.htaccessによる）
* Laravelの日本語化 (https://github.com/minoryorg/laravel-resources-lang-ja)

## 使い方

install.shをダウンロードしてCloud9のworkspace直下に置きます。  

    wget https://raw.githubusercontent.com/minoryorg/laravel-cloud9/master/install.sh

そして、下記のように権限を与えて実行するだけです。  

    chmod 777 install.sh
    ./install.sh

改行コードをLFに変更したため、以下不要になりました。  

~~sed -i 's/\r//' install.sh~~   

強制実行に対応したため、以下不要になりました。  

~~あとは、メッセージに従って[Enter]を押すなり、[Y][Enter]を押すなりしてください。~~  
  
「done!」が表示されれば完了です。  

ドキュメントルートも設定し、データベースも自動構築しますので、以下も不要になりました。  

~~動作確認をする前に、ドキュメントルートの変更をお忘れなく。~~  
## ~~ドキュメントルートの変更方法~~
## ~~データベースの作成方法~~

## その他
モジュール等が足りなければ適当に追加してください。  
インストールディレクトリを変更したければご自由に。  
