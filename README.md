# code
![test](https://github.com/kit59/code/actions/workflows/test.yml/badge.svg)

2023年度後期のロボットシステム学の課題３用のリポジトリ。

入力された数値の半径の円の面積を計算するコマンドであるcircle.pyがある。

## Install
下記を実行することでリポジトリがクローンされる。
```
git clone https://github.com/kit59/code.git
```

## circle.py
入力された数値の半径の円の面積を算出する。
下記は実行する際のコマンドの書き方と実行例である。
```
$ echo 6 | python3 circle.py
半径6.0の円の面積は113.09733552923255
$ echo 8 | python3 circle.py
半径8.0の円の面積は201.06192982974676
```

## 必要なソフトウェア
* Python
  * テスト済み: 3.7～3.10

## テスト環境
* Ubuntu 20.04 on Windows
* Python
  * テスト済み: 3.7～3.10

## ライセンスについて 
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます
* © 2023 Kaito Akiyama
