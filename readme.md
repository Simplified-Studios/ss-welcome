## Event: All you need is this event. It can go pretty much anywhere.
```lua
TriggerEvent('ss-welcome:client:openUI')
```
## Example:
#### We recommend putting it in qb-clothing where newcomers first create their characters on the server.

# qb-clothing

* Find this event on qb-clothing-client.lua around Line 1239
```lua
RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')
```

* Replace with this instead
```lua
RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')
AddEventHandler('qb-clothes:client:CreateFirstCharacter', function()
    QBCore.Functions.GetPlayerData(function(pData)
        local skin = "mp_m_freemode_01"
        openMenu({
            {menu = "character", label = "Character", selected = true},
            {menu = "clothing", label = "Features", selected = false},
            {menu = "accessoires", label = "Accessories", selected = false}
        })

        if pData.charinfo.gender == 1 then
            skin = "mp_f_freemode_01"
        end

        ChangeToSkinNoUpdate(skin)
        SendNUIMessage({
            action = "ResetValues",
        })
    end)
    Wait(1200)
    TriggerEvent('ss-welcome:client:openUI')
end)    
```
# Illenium-Appearance

* Find the below event, around line 89 on /qb/main.lua.

* Replace with this. 
```lua
RegisterNetEvent("qb-clothes:client:CreateFirstCharacter", function()
    QBCore.Functions.GetPlayerData(function(pd)
        PlayerData = pd
        setClientParams()
        InitializeCharacter(Framework.GetGender(true))
        Wait(1200)
        TriggerEvent('ss-welcome:client:openUI')
    end)
end)
```