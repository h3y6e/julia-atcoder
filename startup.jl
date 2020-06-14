using Atom, Juno
using Cascadia, Gumbo, HTTP

function connectjuno()
    print("ATOM_PORT: ")
    atomport = parse(Int, readline())
    Juno.connect("host.docker.internal", atomport)
end

function makecontestdir()
    print("Contest: ")
    contestname = readline()
    try
        mkdir(contestname)
        downloadtestcases(contestname)
    catch
    finally
        try
            cd(contestname)
        catch
        end
    end
end

function downloadtestcases(contest)
    # base
    baseurl = "https://atcoder.jp"
    basedir = "$(contest)/testcases"
    mkdir(basedir)

    # Get tasks
    res = HTTP.get("$(baseurl)/contests/$(contest)/tasks")
    tasks = eachmatch(
        Selector(".text-center.no-break > a"),
        parsehtml(String(res.body)).root,
    )

    for task in tasks
        # Create directory from task url
        href = task.attributes["href"]
        taskdir = "$(basedir)/$(href[end])"
        mkdir(taskdir)

        # Get samples
        r = HTTP.get("$(baseurl)$(href)")
        h = parsehtml(String(r.body))
        sampleinputs =
            (eachmatch(sel"h3:contains('Sample Input') + pre", h.root))
        sampleoutputs =
            (eachmatch(sel"h3:contains('Sample Output') + pre", h.root))

        # Create sample input files
        mkdir("$(taskdir)/in")
        for (i, sampleinput) in enumerate(nodeText.(sampleinputs))
            open(
                "$(taskdir)/in/sample_$(lpad(string(i), 2, '0')).txt",
                "w",
            ) do f
                print(f, sampleinput)
            end
        end

        # Create sample output files
        mkdir("$(taskdir)/out")
        for (i, sampleoutput) in enumerate(nodeText.(sampleoutputs))
            open(
                "$(taskdir)/out/sample_$(lpad(string(i), 2, '0')).txt",
                "w",
            ) do f
                print(f, sampleoutput)
            end
        end
    end
end

connectjuno()
makecontestdir()
