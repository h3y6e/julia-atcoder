JULIA_VERSION = 1.4.0
インストール済みライブラリ: DataStructures, Primes

## Usage
1. Junoを開き，`Shift + Command + P` で `Julia Client: New Terminal` を選択
1. 以下を入力
```sh
# Docker
$ make build
$ make run
```
1. `Shift + Command + P` で `Julia Client: Connect External Proccess` を選択し，出てくる数字(`ATOM_PORT`)をコピー
1. 以下を入力(`[ATOM_PORT]`に先程の`ATOM_PORT`を置き換える)
```sh
julia> using Juno; Juno.connect("host.docker.internal", [ATOM_PORT])
```
