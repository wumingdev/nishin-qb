local Translations = {
    error = {
        no_people_nearby = "附近沒有玩家",
        no_vehicle_found = "找不到車輛",
        extra_deactivated = "附加 %{extra} 已停用",
        extra_not_present = "此車輛上沒有 %{extra} ",
        not_driver = "你不是車輛的駕駛員",
        vehicle_driving_fast = "此車輛速度過快",
        seat_occupied = "此座位已被佔用",
        race_harness_on = "你穿著賽車安全帶，無法切換",
        obj_not_found = "無法創建所需對象",
        not_near_ambulance = "你不在救護車附近",
        far_away = "你離得太遠",
        stretcher_in_use = "該擔架已有人使用中",
        not_kidnapped = "你並未綁架此人",
        trunk_closed = "車尾箱已關閉",
        cant_enter_trunk = "你無法進入車尾箱",
        already_in_trunk = "你已經在車尾箱內",
        someone_in_trunk = "車尾箱已經有人在內"
    },
    
    progress = {
        flipping_car = "翻轉車輛中..."
    },
    
    success = {
        extra_activated = "附加 %{extra} 已啟用",
        entered_trunk = "你已進入車尾箱"
    },
    
    info = {
        no_variants = "似乎沒有這個的任何變體",
        wrong_ped = "此行人模型不允許此選項",
        nothing_to_remove = "你似乎沒有要移除的任何物品",
        already_wearing = "你已經穿著這個",
        switched_seats = "你現在在 %{seat} 上"
    },
    
    general = {
        command_description = "開啟放射狀選單",
        push_stretcher_button = "[E] - 推擔架",
        stop_pushing_stretcher_button = " ~g~E~w~ - 放下擔架",
        lay_stretcher_button = "[G] 躺上擔架",
        push_position_drawtext = "推動擔架",
        get_off_stretcher_button = "[G] 下擔架",
        get_out_trunk_button = "[E]- 離開後車箱",
        close_trunk_button = "[G] 關閉後車箱",
        open_trunk_button = "[G] 開啟後車箱",
        getintrunk_command_desc = "進入車尾箱",
        putintrunk_command_desc = "將玩家放入車尾箱"
    },
    
    options = {
    emergency_button = "緊急按鈕",
    driver_seat = "駕駛座位",
    passenger_seat = "乘客座位",
    other_seats = "其他座位",
    rear_left_seat = "後左座位",
    rear_right_seat = "後右座位"
    },

}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
