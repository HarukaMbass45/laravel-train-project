# Laravelで最強の環境を作るためのメモ

参考にさせていただたサイト
https://qiita.com/ucan-lab/items/5fc1281cd8076c8ac9f4

## コンテナ構成

```
├─ app
├─ web
└─ db
```
この構成を作ろうと思ってけど一度断念してる

### appコンテナ

- アプリケーションサーバーのコンテナ
- PHP8.0系を利用
- Laravel 8.x サーバ要件を満たすこと
- php、composerのベースイメージ

### web コンテナ

- ウェブサーバのコンテナ
- HTTPリクエストを受けて、HTTPレスポンスを返す
- phpファイルのアクセスはappコンテナに投げる
- yarnコマンドをインストールしてアセットファイルのビルドも担う
- nginx、nodeのベースイメージを利用

### db コンテナ

- データベースコンテナ
- MySQLのバージョンは8.0系を利用
- mysql/mysql-serverのベースイメージを利用
    - Docker Hub公式イメージじゃないよ

