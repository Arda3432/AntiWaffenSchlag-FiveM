CreateThread(function()
    while true do
        Wait(0)

        local playerPed = PlayerPedId()
        if IsPedArmed(playerPed, 6) then
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 141, true)
            DisableControlAction(0, 142, true)
        end
    end
end)

local function ShowNotification(message)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(false, false)
end

