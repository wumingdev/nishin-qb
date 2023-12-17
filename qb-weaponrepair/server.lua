local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-weaponrepair:server:repairweapon', function(weapon)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local weaponInfo = QBCore.Shared.Weapons[weapon]
    local serieNumber = nil
    if weaponInfo then
        local weaponItem = Player.Functions.GetItemByName(weaponInfo["name"])
        if weaponItem then
            if weaponItem.info and weaponItem.info ~= "" then
                serieNumber = weaponItem.info.serie
                local weaponhealth = nil
                exports.oxmysql:fetch("SELECT * FROM `weaponrepair` WHERE serial = '"..serieNumber.."'", function(result)
                    if result[1] ~= nil then
                        local repairamount = result[1].MaxHealth
                        if weaponItem.info.quality == 100 then                      
                            TriggerClientEvent('QBCore:Notify', src, "這把武器目前不需要修理", "error")
                        elseif repairamount == 100 then
                            if weaponItem.info.quality < 80 then
                                if not Config.RemoveItem then
                                    weaponhealth = 80
                                    exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                    TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                    TriggerClientEvent('QBCore:Notify', src, "你的武器已回復到還可以使用的狀態")
                                else
                                    if Player.Functions.RemoveItem('weaponrepairkit', 1) then
                                        weaponhealth = 80
                                        exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                        TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                        TriggerClientEvent('QBCore:Notify', src, "你的武器已回復到還可以使用的狀態")
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weaponrepairkit'], "remove")
                                    else
                                        TriggerClientEvent('QBCore:Notify', src, "你需要一個武器維修包修理武器", "error")
                                    end
                                end
                            else
                                TriggerClientEvent('QBCore:Notify', src, "請等到武器需要修理的時候再進行維修", "error")
                            end
                        elseif repairamount == 80 then
                            if weaponItem.info.quality < 60 then
                                if not Config.RemoveItem then
                                    weaponhealth = 60
                                    exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                    TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                    TriggerClientEvent('QBCore:Notify', src, "你的武器已維修到能用的狀態")
                                else
                                    if Player.Functions.RemoveItem('weaponrepairkit', 1) then
                                        weaponhealth = 60
                                        exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                        TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                        TriggerClientEvent('QBCore:Notify', src, "你的武器已維修到能用的狀態")
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weaponrepairkit'], "remove")
                                    else
                                        TriggerClientEvent('QBCore:Notify', src, "你需要一個武器維修包修理武器", "error")
                                    end
                                end
                            else
                                TriggerClientEvent('QBCore:Notify', src, "請等到武器需要修理的時候再進行維修", "error")
                            end
                        elseif repairamount == 60 then
                            if weaponItem.info.quality < 40 then
                                if not Config.RemoveItem then
                                    weaponhealth = 40
                                    exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                    TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                    TriggerClientEvent('QBCore:Notify', src, "你的武器已維修到勉強能用的狀態")
                                else
                                    if Player.Functions.RemoveItem('weaponrepairkit', 1) then
                                        weaponhealth = 40
                                        exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                        TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                        TriggerClientEvent('QBCore:Notify', src, "你的武器已維修到勉強能用的狀態")
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weaponrepairkit'], "remove")
                                    else
                                        TriggerClientEvent('QBCore:Notify', src, "你需要一個武器維修包修理武器", "error")
                                    end
                                end
                            else
                                TriggerClientEvent('QBCore:Notify', src, "請等到武器需要修理的時候再進行維修", "error")
                            end
                        elseif repairamount == 40 then
                            if weaponItem.info.quality < 20 then
                                if not Config.RemoveItem then
                                    weaponhealth = 20
                                    exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                    TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                    TriggerClientEvent('QBCore:Notify', src, "你的武器快壞了...")
                                else
                                    if Player.Functions.RemoveItem('weaponrepairkit', 1) then
                                        weaponhealth = 20
                                        exports.oxmysql:execute("UPDATE weaponrepair SET MaxHealth = '"..weaponhealth.."' WHERE serial = '"..serieNumber.."'")
                                        TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                        TriggerClientEvent('QBCore:Notify', src, "你的武器快壞了...")                           
                                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weaponrepairkit'], "remove")
                                    else
                                        TriggerClientEvent('QBCore:Notify', src, "你需要一個武器維修包修理武器", "error")
                                    end
                                end
                            else
                                TriggerClientEvent('QBCore:Notify', src, "請等到武器需要修理的時候再進行維修", "error")
                            end
                        elseif repairamount == 20 then
                            TriggerClientEvent('QBCore:Notify', src, "這把破爛武器已經修不了了", "error")
                        end
                    else
                        if weaponItem.info.quality < 100 then
                            if not Config.RemoveItem then
                                weaponhealth = 100	
                                exports.oxmysql:insert("INSERT INTO `weaponrepair` (`serial`, `MaxHealth`) VALUES ('"..serieNumber.."','"..weaponhealth.."')")
                                TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                TriggerClientEvent('QBCore:Notify', src, "你的武器完全修好了")
                            else
                                if Player.Functions.RemoveItem('weaponrepairkit', 1) then
                                    weaponhealth = 100	
                                    exports.oxmysql:insert("INSERT INTO `weaponrepair` (`serial`, `MaxHealth`) VALUES ('"..serieNumber.."','"..weaponhealth.."')")
                                    TriggerClientEvent('weapons:client:SetWeaponQuality', src, weaponhealth)
                                    TriggerClientEvent('QBCore:Notify', src, "你的武器完全修好了")
                                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weaponrepairkit'], "remove")
                                else
                                    TriggerClientEvent('QBCore:Notify', src, "你需要一個武器維修包修理武器", "error")
                                end
                            end
                        else
                            TriggerClientEvent('QBCore:Notify', src, "這把武器好到不需要修理", "error")
                        end
                    end
                end)
            end
        end
    end
end)

if not Config.Target then
    QBCore.Functions.CreateUseableItem("weaponrepairkit", function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        TriggerClientEvent("qb-weaponrepair:repairclient", src)
    end)
end