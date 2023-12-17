local Translations = {
    error = {
        no_money = '金錢不足',
        too_far = '你距離你的熱狗攤太遠了',
        no_stand = '你沒有熱狗攤',
        cust_refused = '拒絕顧客！',
        no_stand_found = '你的熱狗攤不見了，你將無法收回押金！',
        no_more = '你已經沒有 %{value} 張市政證',
        deposit_notreturned = '你沒有擁有熱狗攤',
        no_dogs = '你沒有任何熱狗',
    },    
    success = {
        deposit = '你支付了 $%{deposit} 押金！',
        deposit_returned = '你的 $%{deposit} 押金已退還！',
        sold_hotdogs = '%{value} x 熱狗已售出，售價 $%{value2}',
        made_hotdog = '你製作了 %{value} ',
        made_luck_hotdog = '你製作了 %{value} x %{value2} 熱狗',
    },
    info = {
        command = "刪除攤位（僅限管理員）",
        blip_name = '熱狗攤位',
        start_working = '[E] 開始工作',
        start_work = '開始工作',
        stop_working = '[E] 停止工作',
        stop_work = '停止工作',
        grab_stall = '[~g~G~s~] 推攤子',
        drop_stall = '[~g~G~s~] 放下攤子',
        grab = '拿起攤位',
        prepare = '準備熱狗',
        toggle_sell = '切換銷售狀態',
        selling_prep = '[~g~E~s~] 預備熱狗 [出售： ~g~銷售中~w~]',
        not_selling = '[~g~E~s~] 預備熱狗 [出售： ~r~未出售~w~]',
        sell_dogs = '[~g~7~s~] 出售 %{value} 個熱狗，價格 $%{value2} / [~g~8~s~] 拒絕',
        sell_dogs_target = '出售 %{value} 個熱狗，價格 $%{value2}',
        admin_removed = "熱狗攤位已移除",
        label_a = "絕頂好吃的A級熱狗",
        label_b = "好像比起一般的熱狗還好吃B級熱狗",
        label_c = "再普通不過的熱狗C級熱狗"
    },    
    keymapping = {
        gkey = '放下熱狗攤',
    }    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
