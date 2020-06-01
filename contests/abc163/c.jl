let
  N = parse(Int, readline())
  A = map(x -> parse(Int, x), readline() |> split)
  ans = zeros(Int, N)
  for a in A
    ans[a] += 1
  end
  for i in ans
    println(i)
  end
end
