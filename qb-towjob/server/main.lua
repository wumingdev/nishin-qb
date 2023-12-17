local QBCore = exports['qb-core']:GetCoreObject()
local PaymentTax = 15
local Bail = {}

RegisterNetEvent('qb-tow:server:DoBail', function(bool, vehInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if bool then
        if Player.PlayerData.money.cash >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('cash', Config.BailPrice, "tow-paid-bail")
            TriggerClientEvent('QBCore:Notify', src, Lang:t("success.paid_with_cash", {value = Config.BailPrice}), 'success')
            TriggerClientEvent('qb-tow:client:SpawnVehicle', src, vehInfo)
        elseif Player.PlayerData.money.bank >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('bank', Config.BailPrice, "tow-paid-bail")
            TriggerClientEvent('QBCore:Notify', src, Lang:t("success.paid_with_bank", {value = Config.BailPrice}), 'success')
            TriggerClientEvent('qb-tow:client:SpawnVehicle', src, vehInfo)
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_deposit", {value = Config.BailPrice}), 'error')
        end
    else
        if Bail[Player.PlayerData.citizenid] ~= nil then
            Player.Functions.AddMoney('bank', Bail[Player.PlayerData.citizenid], "tow-bail-paid")
            Bail[Player.PlayerData.citizenid] = nil
            TriggerClientEvent('QBCore:Notify', src, Lang:t("success.refund_to_cash", {value = Config.BailPrice}), 'success')
        end
    end
end)

RegisterNetEvent('qb-tow:server:nano', function(vehNetID)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local targetVehicle = NetworkGetEntityFromNetworkId(vehNetID)
    if not Player then return end

    local playerPed = GetPlayerPed(src)
    local playerVehicle = GetVehiclePedIsIn(playerPed, true)
    local playerVehicleCoords = GetEntityCoords(playerVehicle)
    local targetVehicleCoords = GetEntityCoords(targetVehicle)
    local dist = #(playerVehicleCoords - targetVehicleCoords)
    -- if Player.PlayerData.job.name ~= "tow" or dist > 11.0 then
    --     return DropPlayer(src, Lang:t("info.skick"))
    -- end

    local chance = math.random(1,100)
    if chance < 2 then
        TriggerClientEvent('QBCore:Notify', source, '看你那麼辛苦給你點福利蓮', "success")
        Player.Functions.AddItem("casinochips", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["casinochips"], "add")
    end
end)

RegisterNetEvent('qb-tow:server:11101110', function(drops)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local playerPed = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(playerPed)
    -- if Player.PlayerData.job.name ~= "tow" or #(playerCoords - vector3(Config.Locations["main"].coords.x, Config.Locations["main"].coords.y, Config.Locations["main"].coords.z)) > 6.0 then
    --     return DropPlayer(src, Lang:t("info.skick"))
    -- end

    drops = tonumber(drops)
    local bonus = 0
    local DropPrice = 25


    Player.Functions.AddJobReputation(1)
    Player.Functions.AddMoney("bank", DropPrice, "tow-salary")
    TriggerClientEvent('QBCore:Notify', src, Lang:t("success.you_earned", {value = payment}), 'success')
end)

QBCore.Commands.Add("npc", Lang:t("info.toggle_npc"), {}, false, function(source)
	TriggerClientEvent("jobs:client:ToggleNpc", source)
end)

QBCore.Commands.Add("tow", Lang:t("info.tow"), {}, false, function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "tow"  or Player.PlayerData.job.name == "mechanic" then
        TriggerClientEvent("qb-tow:client:TowVehicle", source)
    end
end)
