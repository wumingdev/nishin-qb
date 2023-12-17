local QBCore = exports['qb-core']:GetCoreObject()
local availableJobs = {}

if not QBCore.Shared.QBJobsStatus then
    availableJobs = Config.AvailableJobs
end

-- Exports

local function AddCityJob(jobName, toCH)
    if availableJobs[jobName] then return false, "already added" end
    availableJobs[jobName] = {
        ["label"] = toCH.label,
        ["isManaged"] = toCH.isManaged
    }
    return true, "success"
end

exports('AddCityJob', AddCityJob)

-- Functions

-- local function giveStarterItems()
--     local Player = QBCore.Functions.GetPlayer(source)
--     if not Player then return end
--     for _, v in pairs(QBCore.Shared.StarterItems) do
--         local info = {}
--         if v.item == "id_card" then
--             info.citizenid = Player.PlayerData.citizenid
--             info.firstname = Player.PlayerData.charinfo.firstname
--             info.lastname = Player.PlayerData.charinfo.lastname
--             info.birthdate = Player.PlayerData.charinfo.birthdate
--             info.gender = Player.PlayerData.charinfo.gender
--             info.nationality = Player.PlayerData.charinfo.nationality
--         elseif v.item == "driver_license" then
--             info.firstname = Player.PlayerData.charinfo.firstname
--             info.lastname = Player.PlayerData.charinfo.lastname
--             info.birthdate = Player.PlayerData.charinfo.birthdate
--             info.type = "Class C Driver License"
--         end
--         Player.Functions.AddItem(v.item, 1, nil, info)
--     end
-- end
    local function giveStarterItems()
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return end
        exports['um-idcard']:CreateMetaLicense(src, {'id_card','driver_license','weaponlicense'})
    end
-- Callbacks



QBCore.Functions.CreateCallback('qb-cityhall:server:receiveJobs', function(_, cb)
    cb(availableJobs)
end)

-- Events

-- RegisterNetEvent('qb-cityhall:server:requestId', function(item, hall)
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     if not Player then return end
--     local itemInfo = Config.Cityhalls[hall].licenses[item]
--     if not Player.Functions.RemoveMoney("cash", itemInfo.cost) then return TriggerClientEvent('QBCore:Notify', src, ('You don\'t have enough money on you, you need %s cash'):format(itemInfo.cost), 'error') end
--     local info = {}
--     if item == "id_card" then
--         info.citizenid = Player.PlayerData.citizenid
--         info.firstname = Player.PlayerData.charinfo.firstname
--         info.lastname = Player.PlayerData.charinfo.lastname
--         info.birthdate = Player.PlayerData.charinfo.birthdate
--         info.gender = Player.PlayerData.charinfo.gender
--         info.nationality = Player.PlayerData.charinfo.nationality
--     elseif item == "driver_license" then
--         info.firstname = Player.PlayerData.charinfo.firstname
--         info.lastname = Player.PlayerData.charinfo.lastname
--         info.birthdate = Player.PlayerData.charinfo.birthdate
--         info.type = "Class C Driver License"
--     elseif item == "weaponlicense" then
--         info.firstname = Player.PlayerData.charinfo.firstname
--         info.lastname = Player.PlayerData.charinfo.lastname
--         info.birthdate = Player.PlayerData.charinfo.birthdate
--     else
--         return false -- DropPlayer(src, 'Attempted exploit abuse')
--     end
--     if not Player.Functions.AddItem(item, 1, nil, info) then return end
--     TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
-- end)
RegisterNetEvent('qb-cityhall:server:requestId', function(item, hall)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local itemInfo = Config.Cityhalls[hall].licenses[item]
    if not Player.Functions.RemoveMoney("cash", itemInfo.cost) then return TriggerClientEvent('QBCore:Notify', src, ('You don\'t have enough money on you, you need %s cash'):format(itemInfo.cost), 'error') end
    local info = {}
    if item == "id_card" then
        exports['um-idcard']:CreateMetaLicense(src, 'id_card')
    elseif item == "driver_license" then
        exports['um-idcard']:CreateMetaLicense(src, 'driver_license')
    elseif item == "weaponlicense" then
        exports['um-idcard']:CreateMetaLicense(src, 'weaponlicense')
    else
        return false -- DropPlayer(src, 'Attempted exploit abuse')
    end
    -- if not Player.Functions.AddItem(item, 1, nil, info) then return end
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
end)

RegisterNetEvent('qb-cityhall:server:sendDriverTest', function(instructors)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    for i = 1, #instructors do
        local citizenid = instructors[i]
        local SchoolPlayer = QBCore.Functions.GetPlayerByCitizenId(citizenid)
        if SchoolPlayer then
            TriggerClientEvent("qb-cityhall:client:sendDriverEmail", SchoolPlayer.PlayerData.source, Player.PlayerData.charinfo)
        else
            local mailData = {
                sender = "Township",
                subject = "Driving lessons request",
                message = "Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>" .. Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. "<br />Phone Number: <strong>" .. Player.PlayerData.charinfo.phone .. "</strong><br><br>Kind regards,<br>Township Los Santos",
                button = {}
            }
            exports["qb-phone"]:sendNewMailToOffline(citizenid, mailData)
        end
    end
    TriggerClientEvent('QBCore:Notify', src, "An email has been sent to driving schools, and you will be contacted automatically", "success", 5000)
end)

RegisterNetEvent('qb-cityhall:server:ApplyJob', function(job, cityhallCoords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local ped = GetPlayerPed(src)
    local pedCoords = GetEntityCoords(ped)

    local data = {
        ["src"] = src,
        ["job"] = job
    }
    if #(pedCoords - cityhallCoords) >= 20.0 or not availableJobs[job] then
        return false -- DropPlayer(source, "Attempted exploit abuse")
    end
    if QBCore.Shared.QBJobsStatus then
        exports["qb-jobs"]:submitApplication(data, "Jobs")
    else
        local JobInfo = QBCore.Shared.Jobs[job]
        Player.Functions.SetJob(data.job, 0)
        TriggerClientEvent('QBCore:Notify', data.src, Lang:t('info.new_job', { job = JobInfo.label }))
    end
end)

RegisterNetEvent('qb-cityhall:server:getIDs', giveStarterItems)

RegisterNetEvent('QBCore:Client:UpdateObject', function()
    QBCore = exports['qb-core']:GetCoreObject()
end)

-- Commands

QBCore.Commands.Add("drivinglicense", "Give a drivers license to someone", { { "id", "ID of a person" } }, true, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    local SearchedPlayer = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if SearchedPlayer then
        if not SearchedPlayer.PlayerData.metadata["licences"]["driver"] then
            for i = 1, #Config.DrivingSchools do
                for id = 1, #Config.DrivingSchools[i].instructors do
                    if Config.DrivingSchools[i].instructors[id] == Player.PlayerData.citizenid then
                        SearchedPlayer.PlayerData.metadata["licences"]["driver"] = true
                        SearchedPlayer.Functions.SetMetaData("licences", SearchedPlayer.PlayerData.metadata["licences"])
                        TriggerClientEvent('QBCore:Notify', SearchedPlayer.PlayerData.source, "You have passed! Pick up your drivers license at the town hall", "success", 5000)
                        TriggerClientEvent('QBCore:Notify', source, ("Player with ID %s has been granted access to a driving license"):format(SearchedPlayer.PlayerData.source), "success", 5000)
                        break
                    end
                end
            end
        else
            TriggerClientEvent('QBCore:Notify', source, "Can't give permission for a drivers license, this person already has permission", "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', source, "Player Not Online", "error")
    end
end)


-- 設定物品名稱和數量
local itemToGive = "casinochips"
local itemCount = 5

-- 函數用於給予玩家 "casinochips" 物品
function GivePlayerItem(source)
    -- 添加物品
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem(itemToGive, itemCount, false)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[itemToGive], 'add')
end


RegisterServerEvent('qb-cityhall:server:claimItem')
AddEventHandler('qb-cityhall:server:claimItem', function()
    local player = source
    local qbPlayer = QBCore.Functions.GetPlayer(source)
    local servercitizenid = qbPlayer.PlayerData.citizenid
    local now_claim_date = os.date("%Y-%m-%d")
    -- print(json.encode(qbPlayer.PlayerData.citizenid))
    local license = qbPlayer.PlayerData.license
    
    -- -- 首先检查与此 license 相关联的所有记录的最后领取日期
    -- MySQL.Async.fetchScalar('SELECT MAX(player_last_claim_date) FROM player_rewards WHERE license = ?', {license}, 
    -- function(last_date)
    --     local time_change = last_date / 1000 -- 將毫秒转换为秒
    --     last_time = os.date("%Y-%m-%d", time_change)
    --     if last_date == nil or last_date < now_claim_date then
            
    --         -- 如果没有找到记录或最新的更新日期不是今天，则重置 count
    --         MySQL.Async.execute('UPDATE player_rewards SET received_count = 0 WHERE license = ?', {license})
    --     end

    --     -- 以下是您原有的其他逻辑...
    -- end)

    --     -- 然后检查领取次数
    --     MySQL.Async.fetchScalar('SELECT received_count FROM player_rewards WHERE license = ?', {license}, 
    --         function(count)
    --             if count and count >= 2 then
    --                 -- 如果该账号下的角色已经领取了 2 次或更多次，则不允许再次领取
    --                 local message = "請明天再來！"
    --                 TriggerClientEvent('QBCore:Notify', player, message, "error")
    --             else
    --                 -- 检查这个角色是否今天已经领取过代币
    --                 MySQL.Async.fetchScalar('SELECT last_claim_date FROM player_rewards WHERE citizenid = ?', {servercitizenid}, 
    --                     function(time)
    --                         local time_change = time / 1000 -- 將毫秒转换为秒
    --                         time = os.date("%Y-%m-%d", time_change)
    --                         if time == now_claim_date then
    --                             local message = "寶~您今日已領取過代幣囉~ <3"
    --                             TriggerClientEvent('QBCore:Notify', player, message, "error")
    --                         else
    --                             -- 给予代币，并更新数据库记录
    --                             GivePlayerItem(player)
    --                             local new_count = (count or 0) + 1
    --                             MySQL.Async.execute('INSERT INTO player_rewards (citizenid, last_claim_date, license, received_count) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE last_claim_date = VALUES(last_claim_date), received_count = VALUES(received_count)', {servercitizenid, now_claim_date, license, new_count})
    --                             local message = "寶~給你五個代幣 <3"
    --                             TriggerClientEvent('QBCore:Notify', player, message, "success")
    --                         end
    --                     end)
    --             end
    --         end)
    -- end)

    MySQL.Async.fetchScalar('SELECT last_claim_date FROM player_rewards WHERE citizenid = ?', {servercitizenid}, 
    function(time)
        local last_time = nil
        if time ~= nil then
            local time_change = time / 1000 -- 將毫秒转换为秒
            last_time = os.date("%Y-%m-%d", time_change)
        end
        if last_time and last_time == now_claim_date then
            messagenum = "寶~您今日已領取過代幣囉~ <3"
            TriggerClientEvent('QBCore:Notify', player, messagenum, "error")
        elseif last_time and last_time ~= now_claim_date then
            GivePlayerItem(player)
            MySQL.Async.execute('UPDATE player_rewards SET last_claim_date = ? WHERE citizenid = ?', {now_claim_date, servercitizenid})
            messagenum = "寶~給你五個代幣 <3"
            TriggerClientEvent('QBCore:Notify', player, messagenum, "success")
        elseif last_time == nil then
            GivePlayerItem(player)
            MySQL.Async.execute('INSERT INTO player_rewards (citizenid, last_claim_date) VALUES (?, ?)', {servercitizenid, now_claim_date})
            messagenum = "寶~每天都可以過來領五個代幣喔~ <3"
            TriggerClientEvent('QBCore:Notify', player, messagenum, "success")
        end
    end)

end)