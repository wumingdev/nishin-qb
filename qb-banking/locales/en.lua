local Translations = {
    error = {
        not_give = "無法將物品贈予指定的 ID。",
        givecash = "使用 /givecash [ID] [金額]",
        wrong_id = "錯誤的 ID。",
        dead = "你已死亡哈哈哈。",
        too_far_away = "你距離太遠啦哈哈哈。",
        not_enough = "你沒有這麼多錢。",
        invalid_amount = "金額無效"
    },
    success = {
        debit_card = "你已成功訂購了一張儲蓄卡。",
        cash_deposit = "你成功存入了 $%{value} 現金。",
        cash_withdrawal = "你成功提取了 $%{value} 現金。",
        updated_pin = "你已成功更新你的儲蓄卡 PIN。",
        savings_deposit = "你成功存入了 $%{value} 儲蓄帳戶。",
        savings_withdrawal = "你成功提取了 $%{value} 儲蓄帳戶。",
        opened_savings = "你已成功開設了儲蓄帳戶。",
        give_cash = "成功贈送 $%{cash} 給 ID %{id}",
        received_cash = "成功從 ID %{id} 收到 $%{cash}"
    },
    info = {
        bank_blip = "銀行",
        access_bank_target = "銀行",
        access_bank_key = "[E] - 銀行",
        current_to_savings = "轉帳到儲蓄帳戶",
        savings_to_current = "從儲蓄帳戶轉帳",
        deposit = "將 $%{amount} 存入當前帳戶",
        withdraw = "從當前帳戶提取 $%{amount}",
    },
    command = {
        givecash = "將現金贈送給玩家。"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})