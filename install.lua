function download(f)
    command = "wget "..f
    shell.run(command)
end

