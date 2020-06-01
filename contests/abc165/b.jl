let
  X = parse(Int, readline())
  M = 100
  A = 0
  while true
    M = floor(1.01M)
    A += 1
    if X <= M
      break
    end
  end
  println(A)
end
