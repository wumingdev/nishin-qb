local Translations ={
    ["not_on_radio"] = "你未連接到頻率",
    ["on_radio"] = "你已經連接到這個頻率",
    ["joined_to_radio"] = "你已連接到: %{channel}",
    ["restricted_channel_error"] = "你無法連接到這個頻率！",
    ["invalid_radio"] = "此頻率不可用。",
    ["you_on_radio"] = "你已經連接到這個頻道",
    ["you_leave"] = "你已離開該頻道。",
    ['volume_radio'] = '新音量 %{value}',
    ['decrease_radio_volume'] = '無法再減小無線電音量',
    ['increase_radio_volume'] = '無法再增大無線電音量',
    ['increase_decrease_radio_channel'] = '新頻道 %{value}',
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
