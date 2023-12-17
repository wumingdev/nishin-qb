local Translations = {
    error = {
        smash_own = "你不能摧毀擁有者的車輛。",
        cannot_scrap = "此車輛無法拆解。",
        not_driver = "你不是駕駛員",
        demolish_vehicle = "你現在無法拆解車輛",
        canceled = "已取消",
    },
    text = {
        scrapyard = '拆解場',
        disassemble_vehicle = '[E] - 拆解車輛',
        disassemble_vehicle_target = '拆解車輛',
        email_list = "[E] - 發送車輛清單電子郵件",
        email_list_target = "發送車輛清單電子郵件",
        demolish_vehicle = "拆解車輛",
    },
    email = {
        sender = "特納汽車拆解場",
        subject = "車輛清單",
        message = "你只能拆解一定數量的車輛。<br />你可以保留你拆解的一切，只要不打擾我。<br /><br /><strong>車輛清單：</strong><br />",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
