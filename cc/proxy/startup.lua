rednet.open("top")

while true do
    id, msg = rednet.receive("cmd")

    local data = textutils.unserialise(msg)

    if data["id"] then
        if data["id"] == os.getComputerID() then
            if data["data"] == "reboot" then
                rednet.broadcast("reboot", "system")
            end
        else
            rednet.send(data["id"], data["data"], "proxy")
        end
    end
end