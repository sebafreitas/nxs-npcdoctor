ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('nxs:removemoney')
AddEventHandler('nxs:removemoney', function(price)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    if xPlayer ~= nil then
        xPlayer.removeMoney(price)
    end
end)

ESX.RegisterServerCallback('nxs-rob:paracheckk', function(source, cb, price)
    local xPlayer = ESX.GetPlayerFromId(source)


    if xPlayer ~= nil then
        cb(xPlayer.getAccount("money").money >= price)
    end

end)