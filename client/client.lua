-- Function to open the UI
local function openui()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        logs = Config.logs,
        ImportantNotices = Config.ImportantNotices
    })
end

-- Function to close the UI
local function closeui()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close"
    })
end

-- Register NUI callback for closing the UI
RegisterNUICallback('close', closeui)

-- Register events to open and close the UI
RegisterNetEvent('ss-welcome:client:openUI', openui)
RegisterNetEvent('ss-welcome:client:closeUI', closeui)
