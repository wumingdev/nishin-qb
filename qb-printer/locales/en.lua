local Translations = {
    error = {
        invalid_ext = "無效的副檔名",
        allowed_ext = "允許使用外部連結",

    },
    info = {
        use_printer = "使用印表機"

    },
    command = {
        spawn_printer = "生成印表機"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})