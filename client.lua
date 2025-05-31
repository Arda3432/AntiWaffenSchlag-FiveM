local function isPlayerValid(ped)
    return ped and ped ~= -1 and not IsEntityDead(ped) and not IsPedInAnyVehicle(ped, false)
end

local function keepPlayerAlive(ped)
    local currentHealth = GetEntityHealth(ped)

    if currentHealth > 100 and currentHealth < 140 then
        SetEntityHealth(ped, 145)
    end
end

CreateThread(function()
    while true do
        Wait(200) 

        local player = PlayerPedId()

        if isPlayerValid(player) then
            keepPlayerAlive(player)
        end
    end
end)
