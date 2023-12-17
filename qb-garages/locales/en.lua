local Translations = {
    error = {
        no_vehicles = "此地點沒有車輛!",
        not_impound = "您的車輛未被扣押",
        not_owned = "這台車輛無法停進停車場",
        not_correct_type = "您不能在此存放此類車輛",
        not_enough = "現金不夠",
        no_garage = "沒有",
        vehicle_occupied = "請你的乘客下車",
    },
    success = {
        vehicle_parked = "車輛已被存放",
    },
    menu = {
        header = {
            house_car = "房屋車庫 %{value}",
            public_car = "公共車庫 %{value}",
            public_sea = "公共船庫 %{value}",
            public_air = "公共機庫 %{value}",
            public_rig = "公共拖吊點 %{value}",
            job_car = "工作車庫 %{value}",
            job_sea = "工作船庫 %{value}",
            job_air = "工作機庫 %{value}",
            job_rig = "工作拖吊點 %{value}",
            gang_car = "幫派車庫 %{value}",
            gang_sea = "幫派船庫 %{value}",
            gang_air = "幫派機庫 %{value}",
            gang_rig = "幫派拖吊點 %{value}",
            depot_car = "倉庫 %{value}",
            depot_sea = "倉庫 %{value}",
            depot_air = "倉庫 %{value}",
            depot_rig = "倉庫 %{value}",
            vehicles = "有效車輛",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
            unavailable_vehicle_model = "%{vehicle} | 車輛不可用",
        },
        leave = {
            car = "⬅ 離開車庫",
            sea = "⬅ 離開船庫",
            air = "⬅ 離開機庫r",
            rig = "⬅ 離開拖吊點",
        },
        text = {
            vehicles = "查看存放的車輛！",
            depot = "車牌 %{value}<br>油量: %{value2} | 引擎: %{value3} | 車況: %{value4}",
            garage = "狀態: %{value}<br>油量: %{value2} | 引擎: %{value3} | 車況: %{value4}",
        }
    },
    status = {
        out = "領出",
        garaged = "存入",
        impound = "被警察拖吊",
    },
    info = {
        car_e = "E - 車庫",
        sea_e = "E - 船庫",
        air_e = "E - 機庫",
        rig_e = "E - 拖車場",
        park_e = "E - 儲存車輛",
        house_garage = "E -房屋車庫",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
