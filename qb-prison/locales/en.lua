local Translations = {
    error = {
        ["missing_something"] = "看起來你漏掉了一些東西...",
        ["not_enough_police"] = "警察不夠多...",
        ["door_open"] = "門已經打開了...",
        ["cancelled"] = "流程已取消...",
        ["didnt_work"] = "這沒有奏效...",
        ["emty_box"] = "箱子是空的...",
        ["injail"] = "你在監獄裡待了 %{Time} 個月...",
        ["item_missing"] = "你缺少一個物品...",
        ["escaped"] = "你逃脫了... 快點離開這裡！",
        ["do_some_work"] = "為減刑做些工作，即時工作： %{currentjob} ",
        ["security_activated"] = "最高安全級別已啟動，留在牢房區！"
    },
    success = {
        ["found_phone"] = "你找到了一部手機...",
        ["time_cut"] = "你縮減了一些刑期...",
        ["free_"] = "你自由了！好好享受吧！ :)",
        ["timesup"] = "你的刑期已滿！前往訪客中心結束流程。",
    },
    info = {
        ["timeleft"] = "你還有 %{JAILTIME} 個月的刑期...",
        ["lost_job"] = "你失業了...",
        ["job_interaction"] = "[E] 進行電工作業",
        ["job_interaction_target"] = "進行 %{job} 工作",
        ["received_property"] = "你收回了你的個人物品...",
        ["seized_property"] = "你的個人物品已被扣押，請在刑期結束後找獄警拿回個人物品",
        ["cells_blip"] = "牢房",
        ["freedom_blip"] = "監獄前台",
        ["canteen_blip"] = "餐廳",
        ["work_blip"] = "監獄工作",
        ["target_freedom_option"] = "查看剩餘時間",
        ["target_canteen_option"] = "獲取食物",
        ["police_alert_title"] = "新通報",
        ["police_alert_description"] = "監獄暴動",
        ["connecting_device"] = "連接設備中",
        ["working_electricity"] = "連接電線中",
    }    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
