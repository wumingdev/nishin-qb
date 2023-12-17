local Translations = {
    error = {
        ["cancled"] = "已取消",
        ["no_truck"] = "你沒有卡車！",
        ["not_enough"] = "金錢不足（需要 %{value}）",
        ["too_far"] = "你離卸貨點太遠了",
        ["early_finish"] = "由於提前完成（已完成：%{completed} 總計：%{total}），你的押金將不會退還。",
        ["never_clocked_on"] = "你從未打卡上班！",
        ["all_occupied"] = "所有停車位都被佔用",
        ["job"] = "你必須從職業中心獲得工作",
    },
    success = {
        ["clear_routes"] = "已清除用戶存儲的 %{value} 條路線",
        ["pay_slip"] = "你獲得了 $%{total}，你的薪資單 %{deposit} 已支付到你的銀行帳戶！",
    },    
    target = {
        ["talk"] = '與垃圾工對話',
        ["grab_garbage"] = "拿起垃圾袋",
        ["dispose_garbage"] = "處理垃圾袋",
    },    
    menu = {
        ["header"] = "垃圾主選單",
        ["collect"] = "領取薪水",
        ["return_collect"] = "還卡車並在這裡領取薪水！",
        ["route"] = "請求路線",
        ["request_route"] = "請求垃圾路線",
    },    
    info = {
        ["payslip_collect"] = "[E] - 領取薪水單",
        ["payslip"] = "薪水單",
        ["not_enough"] = "你的押金不足.. 押金費用為 $%{value}",
        ["deposit_paid"] = "你已支付 $%{value} 押金！",
        ["no_deposit"] = "你在這輛車上沒有支付押金..",
        ["truck_returned"] = "卡車已歸還，領取你的薪水和押金！",
        ["bags_left"] = "還有 %{value} 個垃圾袋未處理！",
        ["bags_still"] = "那邊還有 %{value} 個垃圾袋！",
        ["all_bags"] = "所有垃圾袋都處理完畢，前往下一個地點！",
        ["depot_issue"] = "倉庫出了問題，請立即返回！",
        ["done_working"] = "你完成了工作！返回倉庫。",
        ["started"] = "你已開始工作，位置標記在GPS上！",
        ["grab_garbage"] = "[E] 拿起垃圾袋",
        ["stand_grab_garbage"] = "站在這裡拿起垃圾袋。",
        ["dispose_garbage"] = "[E] 處理垃圾袋",
        ["progressbar"] = "正在將袋子放入垃圾車中...",
        ["garbage_in_truck"] = "將袋子放入你的卡車中...",
        ["stand_here"] = "站在這裡..",
        ["found_crypto"] = "你在地板上發現了一個加密棒",
        ["payout_deposit"] = "(+ $%{value} 押金)",
        ["store_truck"] = "[E] - 存儲垃圾車",
        ["get_truck"] = "[E] - 垃圾車",
        ["picking_bag"] = "正在拿起垃圾袋..",
        ["talk"] = "[E] 與垃圾工對話",
    }    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
