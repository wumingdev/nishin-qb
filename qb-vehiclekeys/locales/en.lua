local Translations = {
    notify = {
        ydhk = '您沒有這輛車的鑰匙。',
        nonear = '附近沒有人可以交付鑰匙',
        vlock = '車輛已鎖定！',
        vunlock = '車輛已解鎖！',
        vlockpick = '您成功撬開了車門的鎖！',
        fvlockpick = '您因未找到鑰匙感到沮喪。',
        vgkeys = '您交出了鑰匙。',
        vgetkeys = '您獲得了車輛的鑰匙！',
        fpid = '填寫玩家 ID 和車牌參數',
        cjackfail = '劫車失敗！',
        vehclose = '附近沒有車輛！',
    },
    progress = {
        takekeys = '從屍體取得鑰匙...',
        hskeys = '搜尋汽車鑰匙...',
        acjack = '嘗試劫車...',
    },
    info = {
        skeys = '~g~[H]~w~ - 搜尋鑰匙',
        tlock = '切換車輛鎖',
        palert = '正在進行車輛竊盜。類型：',
        engine = '切換引擎',
    },
    addcom = {
        givekeys = '將鑰匙交給某人。如果未提供玩家 ID，則交給最近的人或車輛中的每個人。',
        givekeys_id = 'id',
        givekeys_id_help = '玩家 ID',
        addkeys = '為某人的車輛添加鑰匙。',
        addkeys_id = 'id',
        addkeys_id_help = '玩家 ID',
        addkeys_plate = '車牌',
        addkeys_plate_help = '車牌',
        rkeys = '為某人的車輛刪除鑰匙。',
        rkeys_id = 'id',
        rkeys_id_help = '玩家 ID',
        rkeys_plate = '車牌',
        rkeys_plate_help = '車牌',
    }

}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
