Étude Op. 10, No. 3 Tristesse
===================

# 目的 #
webpackを使ったRact.jsアプリケーションの開発

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| node           |7.3.0    |             |
| npm            |3.10.10  |             |
| yarn           |0.18.1   |             |
| vagrant        |1.8.7    |             |
| docker         |1.12.5    |             |
| docker-compose |1.8.0    |             |

# 構成 #
## アプリケーション環境構築

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
### Project Config
```
cd /vagrant/
npm init -y
npm install --save-dev babel@6.5.2 babel-core@6.13.2 babel-loader@6.2.4 babel-preset-es2015@6.13.2 babel-preset-react@6.11.1 babel-preset-stage-2@6.13.0 css-loader@0.23.1 postcss-loader@0.9.1 react-hot-loader@3.0.0-beta.6 style-loader@0.13.1 webpack@2.1.0-beta.25 webpack-dev-server@2.1.0-beta.0
npm install --save react@15.3.0 react-dom@15.3.0
```

### Babel Config

### webpack Config
```
npm start
```

`http://192.168.30.1:3000/webpack-dev-server/`で動作を確認する(まだエラー)

### Code

### index.html


`npm start`再起動して`http://192.168.30.1:3000/webpack-dev-server/`で動作を確認する

## アプリケーション配置

### Webpack

```
npm install --save-dev webpack-hot-middleware
```

### Server

### Running

本番用
```
cd /vagrant/
npm build
npm start
```

開発用
```
npm run start:dev
```

### Herokuデプロイ

```
npm install --save express
heroku create op10-no3
git push heroku master
```

`https://op10-no3.herokuapp.com/`で動作を確認する

# 参照 #
+ [Hot Module Replacement - React EDIT THIS PAGE](https://webpack.js.org/guides/hmr-react/)
+ [Deploying your React app to Heroku with Webpack](http://ditrospecta.com/javascript/react/es6/webpack/heroku/2015/08/08/deploying-react-webpack-heroku.html)
