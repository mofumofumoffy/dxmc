--Modem Direction
local rednet_side = "top"

if rednet.isOpen(rednet_side) then
    rednet.open(rednet_side)
end    

while true do
    id, msg = rednet.receive("proxy")
    data.add_log("received cmd > " .. msg)
    local b, err = shell.run("./command_parser.lua " .. msg)
    if b then data.add_log("cmd successfully finished.")
    else data.add_log(err) end
end