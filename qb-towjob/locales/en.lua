local Translations = {
    error = {
        finish_work = "先完成所有工作",
        vehicle_not_correct = "這不是正確的車輛",
        failed = "你失敗了",
        not_towing_vehicle = "你必須在拖車上",
        too_far_away = "你距離太遠了",
        no_work_done = "你還沒有完成任何工作",
        no_deposit = "需要$%{value}的押金",
    },
    success = {
        paid_with_cash = "已支付$%{value}的現金押金",
        paid_with_bank = "已支付$%{value}的銀行押金",
        refund_to_cash = "已退還$%{value}的現金押金",
        you_earned = "你賺了$%{value}",
    },
    menu = {
        header = "可用的卡車",
        close_menu = "⬅ 關閉選單",
    },
    mission = {
        delivered_vehicle = "你已交付一輛車",
        get_new_vehicle = "可以領取新車輛",
        towing_vehicle = "拖吊車輛中...",
        goto_depot = "將車輛帶到Hayes倉庫",
        vehicle_towed = "車輛已被拖走",
        untowing_vehicle = "將車輛放下",
        vehicle_takenoff = "車輛已放下",
    },
    info = {
        tow = "將一輛車放在你的拖板車上",
        toggle_npc = "接取一般市民委託",
        skick = "企圖濫用漏洞",
    },
    label = {
        payslip = "薪資單",
        vehicle = "車輛",
        npcz = "NPC區域",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})