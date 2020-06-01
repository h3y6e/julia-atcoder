let
  A, B = map(x -> parse(Int, x), readline() |> split)
  println(A*B)
end
