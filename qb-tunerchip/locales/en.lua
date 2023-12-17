local Translations = {
    success = {
        this_vehicle_has_been_tuned = "此車輛已調校完成",
    },
    text = {
        this_is_not_the_idea_is_it = "這不是您的打算吧？",
        connecting_nos = "連接 NOS...",
    },
    error = {
        tunerchip_vehicle_tuned = "車輛已經調校完成！",
        this_vehicle_has_not_been_tuned = "此車輛尚未進行過調校",
        no_vehicle_nearby = "附近沒有車輛",
        tunerchip_vehicle_has_been_reset = "車輛已重置！",
        you_are_not_in_a_vehicle = "您不在車輛內",
        you_cannot_do_that_from_this_seat = "您不能從此座位進行該操作！",
        you_already_have_nos_active = "您已經啟用了 NOS",
        canceled = "已取消",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})