local Translations = {
    error = {
        ["canceled"] = "取消",
        ["911_chatmessage"] = "傳訊息至119",
        ["take_off"] = "/divingsuit 脫掉你的潛水服",
        ["not_wearing"] = "你沒穿潛水裝備..",
        ["no_coral"] = "你沒有珊瑚可賣..",
        ["not_standing_up"] = "您需要站起來穿上潛水裝備",
        ["need_otube"] = "你需要氧氣桶",
        ["oxygenlevel"] = '這齒輪等級為 %{oxygenlevel} 必須 0%'
    },
    success = {
        ["took_out"] = "你脫掉了潛水服",
        ["tube_filled"] = "氧氣桶已成功填充"
    },
    info = {
        ["collecting_coral"] = "正在採集珊瑚",
        ["diving_area"] = "潛水區域",
        ["collect_coral"] = "採集珊瑚",
        ["collect_coral_dt"] = "[E] - 採集珊瑚",
        ["checking_pockets"] = "檢查背包出售珊瑚",
        ["sell_coral"] = "販賣珊瑚",
        ["sell_coral_dt"] = "[E] - 販賣珊瑚",
        ["blip_text"] = "119 - 潛水地點",
        ["put_suit"] = "穿上潛水服",
        ["pullout_suit"] = "拿出潛水衣..",
        ["cop_msg"] = "這顆珊瑚可能被偷了",
        ["cop_title"] = "非法潛水",
        ["command_diving"] = "脫掉你的潛水服",
    },
    warning = {
        ["oxygen_one_minute"] = "您的剩餘氧氣量少於 1 分鐘",
        ["oxygen_running_out"] = "您的潛水裝備已耗盡氧氣",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})