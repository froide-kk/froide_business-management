# サンプルデータが入ったDBをローカルに持って来る方法

### １、seequel Aceでサンプルデータを入れたテーブルを作成。（山植さん）
チームメンバーの内、一人がサンプルデータの入ったテーブルを作成。

### ２、ローカルから直接DockerのDBをダンプする。

ダンプとは、テーブルなどのデータベースの情報をSQL文の形で出力することです。バックアップのようなものです。

`$ docker exec -it CONTAINER_NAME mysqldump -u USER_NAME -pPASSWORD DATABASE_NAME > dump.sql`

ダンプすることにより、SeequelAceのデータがdump.sqlファイルの中に入る。

### ３、ダンプしたデータをgit コマンドでgithubにあげる。  
---
### 1、git pullで自分のローカルにpullしてくる。　  


### 2、dump.sqlのファイルがローカルあると思うので、

ローカルから直接Dockerにあるダンプファイルをリストア

**リストア**とは、ダンプされたファイルからデータベースを復元することです。

`$ docker exec -it CONTAINER_NAME mysql -u USER_NAME -p DATABASE_NAME -e"$(cat dump.sql)"`.

### 3、Seeqel Ace で確認すると　↑のコマンドで設定したコンテナのデータベースにデータが入っっている状態になる！  
