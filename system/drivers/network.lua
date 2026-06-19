print("Initializing modem interface")

local Modem = peripheral.find("modem")
local NetworkInformation = {}

if Modem then
    print("Modem found")
    NetworkInformation["hasModem"] = true
    NetworkInformation["modem"] = Modem
    NetworkInformation["isWireless"] = Modem.isWireless()
else
    print("Cannot locate modem")
    NetworkInformation["hasModem"] = false
end

EnvironmentTable["network"] = NetworkInformation