FROM julia:1.4.0

# for AtCoder
RUN julia -e 'using Pkg;\
              Pkg.add(["DataStructures", "Primes"]);\
              using DataStructures, Primes'

# for Juno
RUN julia -e 'using Pkg;\
              Pkg.add(["Atom", "Juno"]);\
              using Atom, Juno'

RUN julia -e 'using Pkg;\
              Pkg.add(["HTTP", "Gumbo", "Cascadia"]);\
              using HTTP, Gumbo, Cascadia'

COPY startup.jl /root/.julia/config/

WORKDIR /contests
