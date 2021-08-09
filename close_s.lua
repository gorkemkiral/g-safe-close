ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterNetEvent('feril:sunucukapat')
AddEventHandler('feril:sunucukapat', function(source,args,rawCommand)
    ESX.SavePlayers()
    os.exit()
end)