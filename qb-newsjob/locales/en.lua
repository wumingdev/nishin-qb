local Translations = {
    text = {
        weazle_overlay = "Weazle Overlay ~輸入_拾取~ \nFilm Overlay: ~輸入互動選單~",
        weazel_news_vehicles = "Weazel新聞車輛",
        close_menu = "⬅ 關閉選單",
        weazel_news_helicopters = "Weazel新聞直升機",
        store_vehicle = "~g~E~w~ - 儲存車輛",
        vehicles = "~g~E~w~ - 車輛",
        store_helicopters = "~g~E~w~ - 存放直升機",
        helicopters = "~g~E~w~ - 直升機",
        enter = "~g~E~w~ - 進入",
        go_outside = "~g~E~w~ - 出去",
        breaking_news = "突發新聞",
        title_breaking_news = "7:00 AM / 今日Weazel新聞獨家報導",
        bottom_breaking_news = "我們即時為您呈現最新新聞"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
