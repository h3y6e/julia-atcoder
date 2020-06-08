function main(io = stdin)
    readstr(; dlm = isspace) = split(readline(io), dlm)
    readnum(T::Type{<:Number} = Int; dlm = isspace) =
        parse.(T, split(readline(io), dlm))

    args... = readnum()

    solve(args...)
end

function solve(args...)
    # write your code here
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
        replace(basename(@__FILE__), r"(.+).jl" => s"testcases/\1"),
    )
else
    main()
end
