local Translations = {
    afk = {
        will_kick = '你已經AFK，將在 ',
        time_seconds = ' 秒後被踢出！',
        time_minutes = ' 分鐘後被踢出！',
        kick_message = '你因為 AFK 而被踢出'
    },
    wash = {
        in_progress = "正在清洗車輛...",
        wash_vehicle = "[E] 清洗車輛",
        wash_vehicle_target = "清洗車輛",
        dirty = "車輛不骯髒",
        cancel = "清洗已取消..."
    },
    consumables = {
        eat_progress = "正在進食...",
        drink_progress = "正在飲用...",
        liqour_progress = "正在飲用烈酒...",
        coke_progress = "吸食古柯鹼...",
        crack_progress = "吸食鴉片...",
        ecstasy_progress = "吞下藥丸",
        healing_progress = "正在療傷",
        meth_progress = "吸食冰毒",
        joint_progress = "吸食點煙草...",
        use_parachute_progress = "穿上降落傘...",
        pack_parachute_progress = "折疊降落傘...",
        no_parachute = "你沒有降落傘！",
        armor_full = "你已經穿足夠的護甲了！",
        armor_empty = "你沒有穿防彈衣...",
        armor_progress = "穿上防彈衣...",
        heavy_armor_progress = "穿上重型防彈衣...",
        remove_armor_progress = "卸下防彈衣...",
        canceled = "已取消..."
    },
    cruise = {
        unavailable = "定速系統不可用",
        activated = "定速系統已啟用",
        deactivated = "定速系統已停用"
    },
    editor = {
        started = "開始錄製！",
        save = "保存錄製！",
        delete = "刪除錄製！",
        editor = "錄製完成！"
    },
    firework = {
        place_progress = "放置煙火...",
        canceled = "已取消...",
        time_left = "煙火發射倒數 ~r~"
    },
    seatbelt = {
        use_harness_progress = "繫上賽車安全帶",
        remove_harness_progress = "卸下賽車安全帶",
        no_car = "你不在車內。"
    },
    teleport = {
        teleport_default = '使用電梯'
    },
    pushcar = {
        stop_push = "[E] 停止推車"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
