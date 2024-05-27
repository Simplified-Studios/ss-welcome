RegisterNetEvent('OpenUI', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
    })
end)

RegisterNetEvent('CloseUI', function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close",
    })
end)

local open = false
RegisterCommand("welcomeui", function()
    if not open then
        TriggerEvent("OpenUI")
    else
        TriggerEvent("CloseUI")
    end
end)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)