# compare
![test](https://github.com/kit59/compare/actions/workflows/test.yml/badge.svg)

2023年度後期のロボットシステム学の課題３用のリポジトリ。

入力された値を30回1/2した値の和と、入力された値と2の積を比較するarrayコマンドがあります。

## Install
下記を実行することでリポジトリがクローンされます。
```
git clone https://github.com/kit59/compare.git
```

## arrayコマンド
先に記載した通り入力された値を30回1/2した値の和と、入力された値と2の積を比較します。

下記は実行する際のコマンドの書き方ですので実際に試したい数字に変えて使用してください。
```
$ echo 8 | python3 array
```

## 必要なソフトウェア
* Python テスト済み
  >- [x] ver3.7
  >- [x] ver3.8
  >- [x] ver3.9
  >- [x] ver3.10

## テスト環境
* Ubuntu 20.04.6 LTS
* Ubuntu-latest
  * ここでのUbuntu-latestとはGitHub Actionsで提供されているUbuntu環境の最新版を指します。


## ライセンスについて 
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます
* © 2023 Kaito Akiyama
