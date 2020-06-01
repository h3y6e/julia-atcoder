let
  N = parse(Int, readline())
  A = zeros(Int, N)
  B = zeros(Int, N)
  for i = 1:N
    A[i], B[i] = map(x -> parse(Int, x), readline() |> split)
  end
  sort!(A)
  sort!(B)
  println(B[N÷2 + 1] - A[N÷2 + 1] + (B[N÷2] - A[N÷2]) * (1 - N%2) + 1)
end
