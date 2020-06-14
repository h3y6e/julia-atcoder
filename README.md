# julia-atcoder
JULIA_VERSION = 1.4.0  
インストール済みライブラリ: DataStructures, Primes  
(参考: [AtCoder 2019/7 Language Update](https://docs.google.com/spreadsheets/d/1PmsqufkF3wjKN6g1L0STS80yP4a6u-VdGiEv5uOHe0M/edit#gid=0&range=57:57))

## 使い方
1. Junoを開く
1. 任意のターミナルで以下を入力 (Junoのものを用いる場合は，`Shift + Command + P` で `Julia Client: New Terminal` を選択)
```sh
$ make build
$ make run
```
3. `Shift + Command + P` で `Julia Client: Connect External Proccess` を選択し，出てくる数字を `ATOM_PORT: ` 後に入力
1. `Contest: ` 後にコンテスト名を入力 (任意)
  この操作によりコンテスト名のディレクトリが(無ければ)作成され，`testcases`フォルダにサンプルケースがダウンロードされる

## template.jl
提出コードの雛形．
`snippets.cson` に以下を追記しておくと `atcoder` を入力するだけで呼べて便利．
```cson
'.source.julia':
  'AtCoder':
    'prefix': 'atcoder'
    'body': """
function main(io = stdin)
    readstr(; dlm = isspace) = split(readline(io), dlm)
    readnum(T::Type{<:Number} = Int; dlm = isspace) =
        parse.(T, split(readline(io), dlm))

    ${1:A, = readnum()}

    solve(${2:args...})
end

function solve(${2:args...})
    ${3:# write your code here}
end

@static if @isdefined(Juno)
    cd(
        () -> begin
            for (i, o) in zip(
                readdir("in", join = true),
                readdir("out", join = true),
            )
                println(i)
                open(main, i)
                println(o)
                open(f -> println(readlines(f)), o)
                println("---")
            end
        end,
        replace(basename(@__FILE__), r"(.+).jl" => s"testcases/\\\\1"),
    )
else
    main()
end
"""
```
