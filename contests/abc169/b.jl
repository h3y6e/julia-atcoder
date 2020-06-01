let
  N = parse(Int, readline())
  A = map(x -> parse(BigInt, x), readline() |> split)
  if prod(A) <= 10^18
    println(prod(A))
  else
    println(-1)
  end
end
