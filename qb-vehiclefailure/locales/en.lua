local Translations = {
    error = {
        ["failed_notification"] = "修復失敗",
        ["not_near_veh"] = "您不在附近的車輛旁！",
        ["out_range_veh"] = "您距離車輛太遠！",
        ["inside_veh"] = "您無法在車輛內部修復車輛引擎！",
        ["healthy_veh"] = "車輛狀況良好，需要更好的工具來修復！",
        ["inside_veh_req"] = "您必須在車輛內才能進行修復！",
        ["roadside_avail"] = "現在可以通過手機呼叫道路救援！",
        ["no_permission"] = "您無權修復車輛",
        ["fix_message"] = "%{message}，現在請前往修車廠！",
        ["veh_damaged"] = "您的車輛受損過重！",
        ["nofix_message_1"] = "您檢查了油位，一切正常",
        ["nofix_message_2"] = "您用口香糖堵住了漏油口",
        ["nofix_message_3"] = "您用膠帶補好了油管",
        ["nofix_message_4"] = "您暫時停止了漏油",
        ["nofix_message_5"] = "您踢了一下自行車，它又正常運作了",
        ["nofix_message_6"] = "您去掉了一些鏽斑",
        ["nofix_message_7"] = "您對著車子大喊，它又開始運作了",
    },
    success = {
        ["cleaned_veh"] = "車輛已清潔完成！",
        ["repaired_veh"] = "車輛已修復完成！",
        ["fix_message_1"] = "您檢查了油位",
        ["fix_message_2"] = "您用口香糖堵住了漏油口",
        ["fix_message_3"] = "您用膠帶補好了油管",
        ["fix_message_4"] = "您已暫時停止了漏油",
        ["fix_message_5"] = "您踢了一下自行車，它又正常運作了",
        ["fix_message_6"] = "您去掉了一些鏽斑",
        ["fix_message_7"] = "您對著車子大喊，它又開始運作了",
    },
    progress = {
        ["clean_veh"] = "正在清潔車輛...",
        ["repair_veh"] = "正在修復車輛...",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})