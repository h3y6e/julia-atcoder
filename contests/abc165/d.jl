let
  A, B, N = map(x -> parse(Int, x), readline() |> split)
  if N < B
    println((A*N)÷B - A*(N÷B))
  else
    println((A*(B-1))÷B - A*((B-1)÷B))
  end
end
