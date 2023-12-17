local QBCore = exports["qb-core"]:GetCoreObject()
local PrinterSpawned = false

local function createPrinter()
    if PrinterSpawned then return end
    local playerPed = PlayerPedId()
    local model = `prop_printer_01`

    for k, v in pairs(Config.Locations) do
        local x, y, z   = v["coords"].x, v["coords"].y, v["coords"].z

        RequestModel(model)
        while (not HasModelLoaded(model)) do
            Wait(1)
        end
        
        if not DoesObjectOfTypeExistAtCoords(x, y, z, 1, model, 0) then
            local obj = CreateObject(model, x, y, z, true, false, true)
            if DoesEntityExist(obj) then
                PlaceObjectOnGroundProperly(obj)
                SetEntityAsMissionEntity(obj, true, true)
            end
        end
    end

    SetModelAsNoLongerNeeded(model)
    PrinterSpawned = true
end


AddEventHandler('onResourceStart', function(resourceName)
    createPrinter()
end)

local function removePrinters()
    local model = `prop_printer_01`
    for k, v in pairs(Config.Locations) do
        local x, y, z = v["coords"].x, v["coords"].y, v["coords"].z
        local obj = GetClosestObjectOfType(x, y, z, 5.0, model, false, false, false)
        DeleteObject(obj)
    end
    PrinterSpawned = false
end

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    removePrinters()
end)

RegisterNetEvent('qb-printer:client:UseDocument', function(ItemData)
    local DocumentUrl = ItemData.info.url ~= nil and ItemData.info.url or false
    SendNUIMessage({
        action = "open",
        url = DocumentUrl
    })
    SetNuiFocus(true, false)
end)

RegisterNetEvent('qb-printer:client:SpawnPrinter', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_printer_01`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetModelAsNoLongerNeeded(model)
    SetEntityAsMissionEntity(obj)
end)

RegisterNetEvent('qb-printer:client:RemovePrinter', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_printer_01`
    local obj = GetClosestObjectOfType(x, y, z, 5.0, model, false, false, false)
    DeleteObject(obj)
end)

-- NUI

RegisterNUICallback('SaveDocument', function(data, cb)
    if data.url then
        TriggerServerEvent('qb-printer:server:SaveDocument', data.url)
    end
    cb('ok')
end)

RegisterNUICallback('CloseDocument', function(_, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)

-- Command

RegisterCommand('useprinter', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    for k, v in pairs(Config.PrintModels) do
        local PrinterObject = GetClosestObjectOfType(pos.x, pos.y, pos.z, 1.5, v, false, false, false)
        print(PrinterObject)
        if PrinterObject ~= 0 then
            SendNUIMessage({
                action = "start"
            })
            SetNuiFocus(true, true)
        end
    end
end)
RegisterNetEvent('qb-printer:printer',function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    for k, v in pairs(Config.PrintModels) do
        local PrinterObject = GetClosestObjectOfType(pos.x, pos.y, pos.z, 1.5, v, false, false, false)
        if PrinterObject ~= 0 then
            SendNUIMessage({
                action = "start"
            })
            SetNuiFocus(true, true)
        end
    end
end)

if Config.UseTarget then
    CreateThread(function()
        exports['qb-target']:AddTargetModel("prop_printer_01", {
            options = {
                {
                    event = 'qb-printer:printer',
                    type = 'client',
                    icon = "fa fa-print	",
                    label = Lang:t('info.use_printer'),
                },
            },
            distance = 1.5,
        })
    end)
end
