local QBCore = exports['qb-core']:GetCoreObject()

if Config.Target then
    CreateThread(function()
        for k, v in pairs(Config.Models) do
            exports['qb-target']:AddTargetModel(v, {
                options = {
                    {
                        type = "client",
                        event = "qb-weaponrepair:repairclient",
                        icon = "fas fa-search-dollar",
                        label = "Use Repair Bench",
                    },
                },
                distance = 3.0
            })
        end
    end)
end

-- TaskStartScenarioInPlace(ped, "PROP_HUMAN_SEAT_SEWING", 0, true)


RegisterNetEvent("qb-weaponrepair:repairclient", function()
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    if weapon ~= -1569615261 then  
        -- 設定動畫參數
        local animDict = 'mini@repair'
        local animName = 'fixing_a_ped'
        local speed = 8.0
        local duration = Config.RepairTime -- 使用配置的維修時間

        -- 確保動畫字典已加載
        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
            Citizen.Wait(0)
        end

        -- 播放動畫
        TaskPlayAnim(ped, animDict, animName, speed, speed, duration, 1, 0, false, false, false)

        -- 進度條
        QBCore.Functions.Progressbar("weapon_repair", "維修武器中...", Config.RepairTime, false, false, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = true,
            disableCombat = true
        }, {}, {}, {}, function()
            ClearPedTasks(ped) -- 結束動畫
            TriggerServerEvent('qb-weaponrepair:server:repairweapon', weapon)
        end)
    else
        QBCore.Functions.Notify('請將武器拿在手上維修', 'error', 3000)
    end
end)
        


