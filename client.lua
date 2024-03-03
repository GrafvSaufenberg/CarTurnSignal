RegisterCommand("BlinkerLinks", function(source, args, rawCommand)
    vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    SetVehicleIndicatorLights(vehicle, 1, true)
end)

Citizen.CreateThread(function()
    while true do
Wait(0)
if IsControlJustPressed(0, 174) then 
     vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if GetVehicleIndicatorLights(vehicle) == 1 then 
        SetVehicleIndicatorLights(vehicle, 1, false)
    elseif GetVehicleIndicatorLights(vehicle) == 0 then
        SetVehicleIndicatorLights(vehicle, 1, true)
    end
end
    end
end)

Citizen.CreateThread(function()
    while true do
Wait(0)
if IsControlJustPressed(0, 175) then 
     vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if GetVehicleIndicatorLights(vehicle) == 2 then 
        SetVehicleIndicatorLights(vehicle, 0, false)
    elseif GetVehicleIndicatorLights(vehicle) == 0 then
        SetVehicleIndicatorLights(vehicle, 0, true)
    end
end
    end
end)

Citizen.CreateThread(function()
    while true do
Wait(0)
if IsControlJustPressed(0, 173) then 
     vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if GetVehicleIndicatorLights(vehicle) == 3 then 
        SetVehicleIndicatorLights(vehicle, 0, false)
        SetVehicleIndicatorLights(vehicle, 1, false)
    elseif GetVehicleIndicatorLights(vehicle) == 0 then
        SetVehicleIndicatorLights(vehicle, 0, true)
        SetVehicleIndicatorLights(vehicle, 1, true)
    end
end
    end
end)