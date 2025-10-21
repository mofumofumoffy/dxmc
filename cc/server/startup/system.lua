if rednet.isOpen(rednet_side) then
    rednet.open(rednet_side)
end

while true do
    id, msg = rednet.receive("system")
    if msg == "reboot" then
        os.reboot()
    end
end