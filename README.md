# LEDの点灯を行うデバイスドライバ
## 概要  
LEDを点灯させるデバイスファイルを作成するパッケージ 

## 動作環境  
以下の環境で開発，動作確認を行っています．  
* Raspberry Pi  
  - Raspberry Pi Model 3B+  
* OS  
  - Ubuntu 16.04
* LED 　　
  - 赤（大）：22番ピン（GPIO25） 
## インストール方法  
```
$ git clone https://github.com/takahara3/led_dev.git
```
## 実行方法  
以下のコマンドを実行し，コンパイル，インストール，パーミッションの変更を行います．
```
$ cd led_dev
$ make  
$ sudo insmod led_dev.ko
$ sudo chmod 666 /dev/led_dev0  
```  
デバイスファイルに`1`を書き込むことで点灯します．  
```
$ echo 1 > /dev/led_dev0
```  
デバイスファイルに`0`を書き込むことで消灯します．  
```
$ echo 0 > /dev/led_dev0
```  
**後処理**  
以下のコマンドを実行し，デバイスファイルを削除します．
```
$ sudo rmmod led_dev
```  
## LICENSE  
This repository is licensed under the GPLv3 license, see COPYING.
