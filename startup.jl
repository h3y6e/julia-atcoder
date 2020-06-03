using OhMyREPL
using Atom, Juno

print("ATOM_PORT: ")
atom_port = parse(Int, readline())
Juno.connect("host.docker.internal", atom_port)
