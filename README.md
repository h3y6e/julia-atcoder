# atcoder-julia
JULIA_VERSION = 1.4.0  
インストール済みライブラリ: DataStructures, Primes

## Usage
1. Junoを開き，`Shift + Command + P` で `Julia Client: New Terminal` を選択
1. 以下を入力
```sh
$ make build
$ make run
```
3. `Shift + Command + P` で `Julia Client: Connect External Proccess` を選択し，出てくる数字(`ATOM_PORT`)をコピー
1. 以下を入力(`[ATOM_PORT]`と先程の`ATOM_PORT`を置き換える)
```julia
julia> using Juno; Juno.connect("host.docker.internal", [ATOM_PORT])
```
