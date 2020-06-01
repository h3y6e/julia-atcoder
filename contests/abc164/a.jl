let
  S, W = map(x -> parse(Int, x), readline() |> split)
  if S <= W
    println("unsafe")
  else
    println("safe")
  end
end
