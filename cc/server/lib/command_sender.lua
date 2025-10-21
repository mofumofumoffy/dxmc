-- Proxy Computer ID
local proxy_id = 0

--Modem Direction
local rednet_side = "top"

if rednet.isOpen(rednet_side) then
    rednet.open(rednet_side)
end    

function send(id, data)
    rednet.send(proxy_id, textutils.serialise({id=id, data=data}), "cmd")
end

return {send=send}