local Translations = {
    info = {
        open_shop = '[E] 商店',
        sell_chips = '[E] 販售籌碼'
    },
    error = {
        missing_license = '',
    },
    success = {
        dealer_verify = '經銷商驗證您的許可證'
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})