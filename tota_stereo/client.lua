tota_core = exports.tota_core

local musicId
local playing = false
Citizen.CreateThread(function()
    Citizen.Wait(1000)
    musicId = "music_id_" .. PlayerPedId()
    local pos
    while true do
        Citizen.Wait(100)
        if tota_core:soundExists(musicId) and playing and IsPedInAnyVehicle(PlayerPedId(), false) then
            if tota_core:isPlaying(musicId) then
                pos = GetEntityCoords(PlayerPedId())
                TriggerServerEvent("myevent:soundStatus", "position", musicId, { position = pos })
            else
                Citizen.Wait(1000)
            end
        else
            Citizen.Wait(1000)
        end
    end
end)

RegisterCommand("stereo", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        playing = true
        TriggerServerEvent("myevent:soundStatus", "play", musicId, { position = pos, link = "https://www.youtube.com/watch?v="..args[1].. ""})
        TriggerEvent('chatMessage', "[TOTA STEREO]", {79, 247, 158}, " Stereo encendido!")
        print("Nueva canción")
    else
        playing = false
        TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 47, 58}, " No estás en un coche!")
    end
end, false)

RegisterNetEvent("myevent:soundStatus")
AddEventHandler("myevent:soundStatus", function(type, musicId, data)
    if type == "position" then
        if tota_core:soundExists(musicId) then
            tota_core:Position(musicId, data.position)
        end
    end

    if type == "play" then
        tota_core:PlayUrlPos(musicId, data.link, 1, data.position)
        tota_core:Distance(musicId, 10)
    end
end)

RegisterCommand("parar", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:Destroy(musicId)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 247, 158}, " Stereo apagado!")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v10", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 1.0)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 10 (MAX)")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v9", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.9)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 9")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v8", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.8)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 8")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v7", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.7)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 7")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v6", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.6)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 6")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v5", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.5)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 5")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v4", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.4)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 4")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v3", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.3)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 3")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v2", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.2)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 2")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

RegisterCommand("v1", function(source, args, rawCommand)
    local pos = GetEntityCoords(PlayerPedId())
    if tota_core:soundExists(musicId) then
    tota_core:setVolumeMax(musicId, 0.1)
    TriggerEvent('chatMessage', "[TOTA STEREO]", {150, 76, 238}, " Volumen 1 (MIN)")
else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end
end)

if tota_core:soundExists(musicId) then

else
    TriggerEvent('chatMessage', "[TOTA STEREO]", {255, 100, 100}, " No hay ninguna canción sonando")
end