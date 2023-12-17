local Translations = {
    notify = {
        ["hud_settings_loaded"] = "HUD 設定已載入！",
        ["hud_restart"] = "HUD 正在重新啟動！",
        ["hud_start"] = "HUD 現在已啟動！",
        ["hud_command_info"] = "將重置您目前的 HUD 設定！",
        ["load_square_map"] = "正在載入方形地圖...",
        ["loaded_square_map"] = "方形地圖已載入！",
        ["load_circle_map"] = "正在載入圓形地圖...",
        ["loaded_circle_map"] = "圓形地圖已載入！",
        ["cinematic_on"] = "電影模式已開啟！",
        ["cinematic_off"] = "電影模式已關閉！",
        ["engine_on"] = "引擎已啟動！",
        ["engine_off"] = "引擎已關閉！",
        ["low_fuel"] = "油量有點低！",
        ["access_denied"] = "您未經授權！",
        ["stress_gain"] = "你覺得壓力有點大...",
        ["stress_removed"] = "你感到了些許放鬆..."
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
