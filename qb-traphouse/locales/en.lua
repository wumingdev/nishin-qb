local Translations = {
    error = {
        not_enough = "你沒有足夠的現金..",
        no_slots = "沒有剩餘的槽位",
        occured = "發生了錯誤",
        have_keys = "此人已經擁有鑰匙",
        p_have_keys = "%{value} 此人已經擁有鑰匙",
        not_owner = "你沒有擁有藥兒屋或不是擁有者",
        not_online = "此人不在城市中",
        no_money = "櫥櫃中沒有任何錢",
        incorrect_code = "此代碼不正確",
        up_to_6 = "你可以授權最多6人訪問藥兒屋！",
        cancelled = "操作已取消",
    },
    success = {
        added = "%{value} 以添加至制藥房!",
    },
    info = {
        enter = "進入到製毒房",
        give_keys = "給予製毒房鑰匙",
        pincode = "製毒房密碼: %{value}",
        taking_over = "接管中",
        pin_code_see = "~b~G~w~ - 查看密碼",
        pin_code = "驗證碼: %{value}",
        multikeys = "~b~/multikeys~w~ [id] - 給予鑰匙",
        take_cash = "~b~E~w~ - 拿現金 (~g~$%{value}~w~)",
        inventory = "~b~H~w~ -查看背包",
        take_over = "~b~E~w~ - 拿出 (~g~$5000~w~)",
        leave = "~b~E~w~ - 離開製毒房",
        robnpc = "威脅市民",
    },
    targetInfo = {
        options = "製毒房選項",
        enter = "進入製毒房",
        give_keys = "授權製毒房鑰匙",
        pincode = "製毒房驗證碼：%{value}",
        taking_over = "接管中",
        pin_code_see = "查看驗證碼",
        pin_code = "驗證碼：%{value}",
        multikeys = "授權鑰匙（使用 /multikey [id]）",
        take_cash = "提取現金（$%{value}）",
        inventory = "查看庫存",
        take_over = "接管（$5000）",
        leave = "離開製毒房",
        close_menu = "⬅ 關閉選單",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
