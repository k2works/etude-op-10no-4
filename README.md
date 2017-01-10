Étude Op. 10, No. 4 Torrent
===================

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

# 目的 #
Ract.jsとSinatraを使ったアプリケーションの開発

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| ruby           |2.4.0    |             |
| node           |7.3.0    |             |
| npm            |3.10.10  |             |
| yarn           |0.18.1   |             |
| vagrant        |1.8.7    |             |
| docker         |1.12.5    |             |
| docker-compose |1.8.0    |             |

# 構成 #
## アプリケーション環境構築

React部分は[Étude Op. 10, No. 3 Tristesse](https://github.com/k2works/etude-op10-no3)をベース

### Vagarntのセットアップ
```
vagrant up
vagrant ssh
```

### Dockerのセットアップ
```
cd /vagrant/
docker-compose build
```

## アプリケーション開発
### Gemfileの追加
```
cd /vagrant/
bundle install
```

### Sinatraアプリケーションのセットアップ
```
bundle exec foreman start
```

### テスト環境のセットアップ
```
bundle exec rspec
```

### Nodeアプリケーションの修正
```
npm start
```

## アプリケーション配置

# 参照 #
+ [Étude Op. 10, No. 3 Tristesse](https://github.com/k2works/etude-op10-no3)
