local Translations = {
    success = {
        hunger_set = '飢餓提醒設定為 %{hungervalue}%',
        thirst_set = '喝水提醒設定為 %{thirstvalue}%',
    },
    warning = {
        hunger_warning = '飢餓提醒 %{hunger}%',
        thirst_warning = '口渴提醒 %{thirst}%'
    },
    info = {
        fitbit = '健身 '
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
