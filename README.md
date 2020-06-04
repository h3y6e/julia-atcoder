# julia-atcoder
JULIA_VERSION = 1.4.0  
インストール済みライブラリ: DataStructures, Primes

## 使い方
1. Junoを開く
1. 任意のターミナルで以下を入力 (Junoのものを用いる場合は，`Shift + Command + P` で `Julia Client: New Terminal` を選択)
```sh
$ make build
$ make run
```
3. `Shift + Command + P` で `Julia Client: Connect External Proccess` を選択し，出てくる数字を`ATOM_PORT: `後に入力
1. `Contest: `後にコンテスト名を入力

## 注意点
Junoのcanvas programmingはターミナルではないため，`readline()`を実行することは出来ない．代わりに`input()`を用いることも可能だが，そのままでは提出できないので置換する(または`input() = readline()`を挿入する)必要がある．さらに複数行入力には対応していないため，基本的にはREPLで`include("file.jl")`を入力するのが良い．
