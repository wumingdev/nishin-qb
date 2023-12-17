local Translations = {
    error = {
        ["no_keys"] = "你沒有房子的鑰匙...",
        ["not_in_house"] = "你不在房子裡！",
        ["out_range"] = "你走出了範圍",
        ["no_key_holders"] = "找不到鑰匙持有者..",
        ["invalid_tier"] = "無效的房屋階級",
        ["no_house"] = "你附近沒有房子",
        ["no_door"] = "你離門太遠了..",
        ["locked"] = "房子已上鎖！",
        ["no_one_near"] = "周圍沒有人！",
        ["not_owner"] = "你不是這房子的主人。",
        ["no_police"] = "附近沒有警察部隊..",
        ["already_open"] = "這房子已經開著了..",
        ["failed_invasion"] = "失敗，請再試一次",
        ["inprogress_invasion"] = "有人正在努力開門..",
        ["no_invasion"] = "這門還沒被打開..",
        ["realestate_only"] = "只有房地產人員可以使用此命令",
        ["emergency_services"] = "只有緊急服務才能執行此操作！",
        ["already_owned"] = "這房子已經被擁有了！",
        ["not_enough_money"] = "你沒有足夠的錢..",
        ["remove_key_from"] = "鑰匙已從 %{firstname} %{lastname} 那裡移除",
        ["already_keys"] = "這個人已經有房子的鑰匙！",
        ["something_wrong"] = "出了些問題，請再試一次！",
        ["nobody_at_door"] = '門口沒有人...'
    },
    success = {
        ["unlocked"] = "房子已解鎖！",
        ["home_invasion"] = "門現在已經打開。",
        ["lock_invasion"] = "你重新上鎖了房子..",
        ["recieved_key"] = "你已經獲得了 %{value} 的鑰匙！",
        ["house_purchased"] = "你已成功購買了這房子！"
    },
    info = {
        ["door_ringing"] = "有人按門鈴！",
        ["speed"] = "速度為 %{value} ",
        ["added_house"] = "你已添加了一個房子： %{value}",
        ["added_garage"] = "你已添加了一個車庫： %{value}",
        ["exit_camera"] = "退出攝像機",
        ["house_for_sale"] = "待售房屋",
        ["decorate_interior"] = "裝飾室內",
        ["create_house"] = "創建房屋（僅限房地產）",
        ["price_of_house"] = "房子的價格",
        ["tier_number"] = "房屋層次編號",
        ["add_garage"] = "添加房屋車庫（僅限房地產）",
        ["ring_doorbell"] = "按門鈴"
    },
    menu = {
        ["house_options"] = "房屋選項",
        ["close_menu"] = "⬅ 關閉選單",
        ["enter_house"] = "進入你的房子",
        ["give_house_key"] = "給予房屋鑰匙",
        ["exit_property"] = "退出財產",
        ["front_camera"] = "前置攝像機",
        ["back"] = "返回",
        ["remove_key"] = "移除鑰匙",
        ["open_door"] = "打開門",
        ["view_house"] = "查看房子",
        ["ring_door"] = "按門鈴",
        ["exit_door"] = "退出財產",
        ["open_stash"] = "打開隱藏點",
        ["stash"] = "隱藏點",
        ["change_outfit"] = "更換裝扮",
        ["outfits"] = "裝扮",
        ["change_character"] = "更換角色",
        ["characters"] = "角色",
        ["enter_unlocked_house"] = "進入解鎖的房子",
        ["lock_door_police"] = "上鎖門（警察專用）"
    },
    target = {
        ["open_stash"] = "[E] 打開儲藏點",
        ["outfits"] = "[E] 更換裝扮",
        ["change_character"] = "[E] 更換角色",
    },
    log = {
        ["house_created"] = "房屋已創建:",
        ["house_address"] = "**地址**： %{label}\n\n**售價**： %{price}\n\n**層次**： %{tier}\n\n**代理人**： %{agent}",
        ["house_purchased"] = "房屋已購買:",
        ["house_purchased_by"] = "**地址**： %{house}\n\n**購買價格**： %{price}\n\n**購買人**： %{firstname} %{lastname}"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})