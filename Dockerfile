FROM ubuntu:latest

RUN apt-get update \
    && apt-get upgrade -y -o Dpkg::Options::="--force-confdef" -o DPkg::Options::="--force-confold" \
    && apt-get install -y wget libgit2-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Julia v0.5.2
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/0.5/julia-0.5.2-linux-x86_64.tar.gz \
    && tar -C /opt -xzf julia-0.5.2-linux-x86_64.tar.gz \
    && ln -s /opt/julia-*/bin/julia /usr/local/bin/julia \
    && rm -f julia-0.5.2-linux-x86_64.tar.gz

CMD ["/bin/bash"]
