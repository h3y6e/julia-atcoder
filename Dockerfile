FROM julia:1.4.0

# for AtCoder
RUN julia -e 'using Pkg;\
              Pkg.add(["DataStructures", "Primes"]);\
              using DataStructures, Primes'

# for Juno
RUN julia -e 'using Pkg;\
              Pkg.add(["Atom", "Juno"]);\
              using Atom, Juno'

COPY startup.jl /root/.julia/config/

WORKDIR /contests
