

local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj
        end)
        Citizen.Wait(0)
    end
end)


RegisterCommand('sunucuyukapat', function(source,args,raw)
    local msg = 'Sunucu kapatılıyor. 50 saniye içerisinde çıkış yapınız.'
    local msg2 = 'Sunucu kapatılıyor. 50 saniye içerisinde çıkış yapınız.'
    ESX.TriggerServerCallback("esx_marker:fetchUserRank", function(playerRank)
        if playerRank == "admin" or playerRank == "superadmin" or playerRank == "mod" then
             TriggerServerEvent('alert:sv', msg, msg2)
                 Citizen.Wait(50000)
                TriggerServerEvent('feril:sunucukapat')
        else
            local msg = 'Sunucu Kapatılmaya çalışılıyor Yetkisiz.'
            local msg2 = 'Sunucu Kapatılmaya çalışılıyor Yetkisiz.'
            TriggerServerEvent('alert:sv', msg, msg2)
        end
    end)
end)
