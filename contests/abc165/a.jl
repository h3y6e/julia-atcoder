let
  K = parse(Int, readline())
  A, B = map(x -> parse(Int, x), readline() |> split)
  if A÷K < B÷K || A%K == 0
    println("OK")
  else
    println("NG")
  end
end
