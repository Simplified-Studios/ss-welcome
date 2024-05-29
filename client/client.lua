RegisterNetEvent('ss-welcome:client:openUI', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        logs = Config.logs,
        ImportantNotices = Config.ImportantNotices
    })
end)

RegisterNetEvent('ss-welcome:client:closeUI', function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close",
    })
end)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)