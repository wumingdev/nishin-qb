local Translations = {
    notifications = {
        ["char_deleted"] = "角色已刪除",
        ["deleted_other_char"] = "您已成功刪除公民 ID 的角色 %{citizenid}.",
        ["forgot_citizenid"] = "您忘記輸入公民ID了",
    },

    commands = {
        -- /deletechar
        ["deletechar_description"] = "刪除另一個玩家角色",
        ["citizenid"] = "公民 ID",
        ["citizenid_help"] = "您要刪除的角色的公民 ID",

        -- /logout
        ["logout_description"] = "登出角色 ",

        -- /closeNUI
        ["closeNUI_description"] = "關閉NUI"
    },

    misc = {
        ["droppedplayer"] = "您已與 Wuming斷開連接"
    },

    ui = {
        -- Main
        characters_header = "我的人物",
        emptyslot = "空的欄位",
        play_button = "進入城鎮",
        create_button = "創建新的角色",
        delete_button = "刪除此人物的記憶",

        -- Character Information
        charinfo_header = "角色資訊",
        charinfo_description = "選擇角色欄位查看您角色的資訊。",
        name = "名稱",
        male = "男性",
        female = "女性",
        firstname = "姓氏",
        lastname = "名字",
        nationality = "國籍",
        gender = "性別",
        birthdate = "出生日期",
        job = "職業",
        jobgrade = "職業階級",
        cash = "現金",
        bank = "存款",
        phonenumber = "電話號碼",
        accountnumber = "帳號",

        chardel_header = "角色註冊",

        -- Delete character
        deletechar_header = "刪除角色",
        deletechar_description = "您真的要刪除此角色嗎",

        -- Buttons
        cancel = "取消",
        confirm = "確認",

        -- Loading Text
        retrieving_playerdata = "檢索玩家數據",
        validating_playerdata = "驗證玩家數據",
        retrieving_characters = "檢索角色",
        validating_characters = "驗證角色",

        -- Notifications
        ran_into_issue = "我們遇到了一個問題",
        profanity = "您似乎試圖在您的名字或國籍中使用某種類型的髒話/髒話！",
        forgotten_field = "您似乎忘記輸入一個或多個欄位！"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
