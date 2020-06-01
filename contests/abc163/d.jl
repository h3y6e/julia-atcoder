# WIP
let
  A = map(x -> parse(Int, x), readline() |> split)
  N = parse(Int, readline())
  B = zeros(Int, N)
  for i = 1:N
    B[i] = parse(Int, readline())
  end
end

let
  N, M, Q = map(x -> parse(Int, x), readline() |> split)
  a = zeros(Int, Q)
  b = zeros(Int, Q)
  c = zeros(Int, Q)
  d = zeros(Int, Q)
  A = ones(Int, N)
  ans = 0
  for i = 1:Q
    a[i], b[i], c[i], d[i] = map(x -> parse(Int, x), readline() |> split)
  end
  for A = 0
end
