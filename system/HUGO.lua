print("Loading System Threads")
local renderThreadCode = loadfile("system/render.lua")
local uiHandlerThreadCode = loadfile("system/uiHandler.lua")
print("Finalizing Initialization")

print("Starting System Threads")
parallel.waitForAny(renderThreadCode,uiHandlerThreadCode)