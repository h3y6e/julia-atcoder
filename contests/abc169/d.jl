using Primes

let
  N = parse(Int, readline())
  ans = 0
  for e in values(factor(Dict, N))
    n = 1
    while (n+1)*(n+2)/2 <= e
      n += 1
    end
    ans += n
  end
  println(ans)
end
