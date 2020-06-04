using Atom, Juno

function connect_juno()
  print("ATOM_PORT: ")
  atom_port = parse(Int, readline())
  Juno.connect("host.docker.internal", atom_port)
end

function move_contest_dir()
  print("Contest: ")
  contest_name = readline()
  try
    mkdir(contest_name)
  catch
  finally
    try
      cd(contest_name)
    catch
    end
  end
end

connect_juno()
move_contest_dir()
