FROM julia:1.4.0

WORKDIR /atcoder

# for AtCoder
RUN julia -e 'using Pkg; Pkg.add(["DataStructures", "Primes"])'

# for Juno
RUN julia -e 'using Pkg; Pkg.add(["Atom", "Juno"])'
