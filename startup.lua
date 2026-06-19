
--initialization
term.setTextColor(colors.green)
term.setBackgroundColor(colors.black)
term.clear()
term.setCursorPos(1,1)

print("Begining initialization stage")

EnvironmentTable = {}
Theme = {}


--initialize functions
print("Initializing main functions")


--run drivers
print("Initializing drivers")
for i,v in pairs(fs.list("system/drivers")) do
    local fileName = "system/drivers/"..v
    print("Running "..fileName)
    os.run({EnvironmentTable=EnvironmentTable,Theme=Theme},fileName)
end

print(EnvironmentTable["network"]["hasModem"])


--run main file
print("Running HUGO.lua")
os.run({EnvironmentTable=EnvironmentTable,Theme=Theme},"system/HUGO.lua")
