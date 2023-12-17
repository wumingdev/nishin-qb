local Translations = {
    error = {
        no_deposit = "需要支付押金 $%{value}",
        cancelled = "已取消",
        vehicle_not_correct = "這不是商用車輛！",
        no_driver = "您必須是駕駛員才能執行此操作..",
        no_work_done = "您還沒有做任何工作..",
        backdoors_not_open = "車輛的後門未打開",
        get_out_vehicle = "您需要下車才能執行此操作",
        too_far_from_trunk = "您需要從車輛的後車箱拿取貨物",
        too_far_from_delivery = "您需要靠近交付點"
    },
    success = {
        paid_with_cash = "現金支付押金 $%{value}",
        paid_with_bank = "從銀行支付押金 $%{value}",
        refund_to_cash = "押金退還至現金 $%{value}",
        you_earned = "您賺取了 $%{value}",
        payslip_time = "您已經走遍所有商店... 是時候領取薪水了！",
    },
    menu = {
        header = "可用卡車",
        close_menu = "⬅ 關閉選單",
    },
    mission = {
        store_reached = "已到達商店，通過 [E] 從後車箱取一個箱子，然後交付到標記處",
        take_box = "取一個貨物箱",
        deliver_box = "交付貨物",
        another_box = "取另一個貨物箱",
        goto_next_point = "您已交付所有貨物，前往下一個地點",
        return_to_station = "您已交付所有貨物，返回基地",
        job_completed = "您已完成您的路線，請領取您的薪水支票"
    },
    info = {
        deliver_e = "~g~E~w~ - 交付貨物",
        deliver = "交付貨物",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
