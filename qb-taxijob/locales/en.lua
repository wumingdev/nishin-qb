local Translations = {
    error = {
        ["already_mission"] = "你已經在執行一個NPC任務",
        ["not_in_taxi"] = "你不在出租車裡",
        ["missing_meter"] = "該車輛沒有計程表",
        ["no_vehicle"] = "你不在車輛中",
        ["not_active_meter"] = "計程表未啟用",
        ["no_meter_sight"] = "找不到計程表",
        ["no_mission_active"] = "你沒有任何任務可以取消"
    },
    success = {
        ["mission_cancelled"] = "成功取消任務",
    },
    info = {
        ["person_was_dropped_off"] = "乘客已下車！",
        ["npc_on_gps"] = "乘客已顯示在你的GPS上",
        ["go_to_location"] = "將乘客帶到指定位置",
        ["vehicle_parking"] = "[E] 停車",
        ["job_vehicles"] = "[E] 車輛",
        ["drop_off_npc"] = "[E] 讓乘客下車",
        ["call_npc"] = "[E] 招呼乘客",
        ["blip_name"] = "城市計程車",
        ["taxi_label_1"] = "標準計程車",
        ["no_spawn_point"] = "無法找到停車位置",
        ["taxi_returned"] = "計程車已停好",
        ["on_duty"] = "[E] - 上班",
        ["on_duty"] = "[E] - 下班"
    },
    menu = {
        ["taxi_menu_header"] = "計程車車輛",
        ["close_menu"] = "⬅ 關閉選單",
        ['boss_menu'] = "老闆選單"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})