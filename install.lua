function download(f)
    if fs.isDir(directory)==false then
        fs.makeDir(directory)
    end
    command = "wget "..f
    shell.run(command)
end

