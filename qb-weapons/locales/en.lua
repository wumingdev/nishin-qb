local Translations = {
    error = {
        canceled = '取消',
        max_ammo = '彈藥達到最大容量',
        no_weapon = '你沒有武器。',
        no_support_attachment = '這把武器不支持這個配件。',
        no_weapon_in_hand = '你手中沒有武器。',
        weapon_broken = '這把武器損壞了，無法使用。',
        no_damage_on_weapon = '這把武器未損壞。',
        weapon_broken_need_repair = '你的武器損壞了，需要修理後才能再次使用。',
        attachment_already_on_weapon = '你的武器已經裝備了 %{value}。'
    },
    success = {
        reloaded = '重新裝彈'
    },
    info = {
        loading_bullets = '裝填子彈中',
        repairshop_not_usable = '現在無法使用修理店。',
        weapon_will_repair = '你的武器將被修復。',
        take_weapon_back = '[E] - 取回武器',
        repair_weapon_price = '[E] 修復武器，價格：~g~$%{value}~w~',
        removed_attachment = '你從武器上卸下了 %{value}！',
        hp_of_weapon = '你的武器耐久度'
    },
    mail = {
        sender = '武器商店',
        subject = '修理',
        message = '你的 %{value} 已經修好，你可以在指定地點取回。<br><br>祝你平安。'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
