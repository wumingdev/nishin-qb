Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'

Config.LicenseRank = 2

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Locations = {
    ["duty"] = {
        [1] = vector3(450.3544, -989.3829, 30.6896),
        [2] = vector3(1832.7451, 3682.3303, 34.1893),
    },
    ["vehicle"] = {
        [1] = vector4(458.7166, -992.5989, 25.7000, 91.3877),--lspd
        [2] = vector4(469.4770, -1025.0619, 28.2213, 90),
    },
    ["SpawnVehicle"] = {
        [1] =vector4(445.5736, -997.0087, 25.1961, 270),
        [2]	=vector4(445.5736, -994.2246, 25.1958, 270),
        [3]	=vector4(445.5736, -991.5640, 25.1958, 270),
        [4]	=vector4(445.5736, -988.8166, 25.1962, 270),
        [5]	=vector4(445.5736, -986.1583, 25.1961, 270),
        [6]	=vector4(437.6167, -986.1047, 25.1964, 90),
        [7]	=vector4(437.6052, -988.8390, 25.1962, 90),
        [8]	=vector4(437.6052, -991.5129, 25.1960, 90),
        [9]	=vector4(437.6052, -994.2740, 25.1961, 90),
        [10]=vector4(437.6052, -996.9429, 25.1958, 90),
        [11]=vector4(425.6734, -997.1256, 25.1959, 270),
        [12]=vector4(425.6734, -994.4423, 25.1960, 270),
        [13]=vector4(425.6734, -991.7814, 25.1962, 270),
        [14]=vector4(425.6734, -989.0739, 25.1964, 270),
        [15]=vector4(425.6734, -984.2662, 25.1962, 270),
        [16]=vector4(425.6734, -981.6082, 25.1962, 270),
        [17]=vector4(425.6734, -978.9061, 25.1963, 270),
        [18]=vector4(425.6734, -976.2039, 25.1961, 270),
    },
    ["stash"] = {
        [1] = vector3(461.0505, -999.6586, 30.6896),
        [2] = vector3(1841.8055, 3678.8894, 34.1892),
    },
    ["impound"] = {
        [1] = vector3(442.6023, -1026.1459, 28.7128),
        [2] = vector3(1815.8451, 3690.5342, 33.9746),
        
    },
    ["helicopter"] = {
        [1] = vector4(449.168, -981.325, 43.691, 87.234),
        [2] = vector4(1852.9514, 3706.4692, 33.9746, 211.5968),
    },
    ["armory"] = {
        [1] = vector3(483.5978, -996.6206, 30.6898),
        [2] = vector3(483.5978, -996.6206, 30.6898),
    },
    ["trash"] = {
        [1] = vector3(469.6539, -996.2814, 26.2737),
        [2] = vector3(439.7773, -978.5748, 30.6896),
    },
    ["fingerprint"] = {
        [1] = vector3(473.5957, -1007.5494, 26.2735),
        [2] = vector3(1817.4253, 3674.0391, 34.1893),
    },
    ["evidence"] = {
        [1] = vector3(475.2154, -1005.1889, 26.2735),
        [2] = vector3(472.5123, -991.2245, 26.2734),
        [3] = vector3(448.4594, -997.6173, 30.6844),
        [4] = vector3(1830.8275, 3680.0313, 38.8594),
    },
    ["stations"] = {
        [1] = {label = "警局", coords = vector4(428.23, -984.28, 29.76, 3.5)},
        [2] = {label = "監獄", coords = vector4(1845.903, 2585.873, 45.672, 272.249)},
        [3] = {label = "北部警局", coords = vector4(-447.0046, 6012.4897, 32.2887, 46.4044)},
        [4] = {label = "中部警局", coords = vector4(1833.0726, 3679.3340, 34.1893, 211.0014)},
    },
}

Config.ArmoryWhitelist = {}

Config.PoliceHelicopter = "POLMAV"

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
         [1] = {label = "中央銀行監視器 1", coords = vector3(237.9425, 233.5049, 109.8559), r = {x = -25.0, y = 0.0, z = 190.00}, canRotate = false, isOnline = true},
         [2] = {label = "中央銀行監視器 2", coords = vector3(245.5466, 222.1548, 117.3728), r = {x = -45.0, y = 0.0, z = -70.91}, canRotate = false, isOnline = true},
         [3] = {label = "中央銀行監視器 3", coords = vector3(272.7060, 216.0059, 100.5455), r = {x = -35.0, y = 0.0, z = 70.87}, canRotate = true, isOnline = true},
         [4] = {label = "葛羅夫街超商監視器", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
         [5] = {label = "佩羅大道酒品店監視器", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
         [6] = {label = "聖安地列斯街酒品店監視器", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
         [7] = {label = "金傑街複合商店監視器", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
         [8] = {label = "艾爾金大街超商監視器", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
         [9] = {label = "威斯普奇大道酒品店監視器", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "米羅公園大道複合商店監視器", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "克林頓大道超商監視器", coords = vector3(382.7352, 328.3102, 105.8630), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "羅克福德車道複合商店監視器", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "海灣酒品店監視器", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "伊尼謝努路超商監視器", coords = vector3(-3045.7783, 592.4829, 10.0218), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "巴巴列努路超商監視器", coords = vector3(-3245.6665, 1010.0846, 14.9458), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "68號道路超商監視器", coords = vector3(540.1166, 2665.9692, 44.2168), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "68號道路酒品店監視器", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "賽諾拉高速公路超商監視器", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "亞漢布拉車道超商監視器", coords = vector3(1966.4996, 3748.7341, 34.6811), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "北部超商監視器", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "流星街銀行監視器", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "威斯普奇銀行監視器", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "霍伊克大街銀行監視器", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "佩羅大道銀行監視器", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "大洋高速公路銀行監視器", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "佩利托大道銀行監視器", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "佩利托大道酒品店監視器", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "佩利托大道超商監視器 1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "佩利托大道超商監視器 2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "佩利托大道超商監視器 3", coords = vector3(170.1422, 6637.6353, 34.1064), r = {x = -35.0, y = 0.0, z = 60.78}, canRotate = false, isOnline = true},
        [31] = {label = "珠寶店監視器 1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "珠寶店監視器 2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "珠寶店監視器 3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "珠寶店監視器 4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [35] = {label = "補給街超商監視器 ", coords = vector3(821.8634, -778.3792, 28.0246), r = {x = -35.0, y = 0.0, z = 123.0}, canRotate = false, isOnline = true},
        
    },
}

Config.AuthorizedVehicles = {
	-- Grade 0
    -- 警察階級
    [0] = {
        -- 主分類1
        ["一般警車"] = {
            -- 主分類標題
            name = "一般警車",
            -- 主分類解說
            txt = "領取一般警車",
            -- 子選單裡面放的車輛
            item = {
                ["police"] = "老式 警車",        
                ["police2"] = "猛牛 警車",       
                ["police3"] = "現代 警車",             
                ["sheriff"] = "純白 警車",
            }
        },
        -- ["進口警車"] = {
        --     name = "進口警車",
        --     txt = "領取進口警車",
        --     item = {
        --         ["fordcv11"] = "Ford Crown Victoria", 
        --         ["19exp"] = "2019 Ford Expedition",
        --         ["srtday20"] = "Dodge Charger SRT",
        --         ["demonboi"] = "Dodge Demon",
        --         ["21ltz"] = "2021 Chevrolet Camaro",
        --     }
        -- },
        -- ["警用機車"] = {
        --     name = "警用機車",
        --     txt = "領取警用機車",
        --     item = {
        --         ["policeb"] = "警用 機車",
        --         ["snbpd"] = "Sinobi Ver.Police",
        --     }
        -- },
        ["訓練用車"] = {
            name = "訓練用車",
            txt = "領取訓練用車",
            item = {
                ["sultan"] = "卡林 王者(不可巡邏)",   
            }
        },
    },
	-- Grade 1
    [1] = {
        ["原生警車"] = {
            -- 主分類標題
            name = "一般警車",
            -- 主分類解說
            txt = "領取一般警車",
            -- 子選單裡面放的車輛
            item = {
                ["police"] = "老式 警車",        
                ["police2"] = "猛牛 警車",       
                ["police3"] = "現代 警車",             
                ["sheriff"] = "純白 警車",
            }
        },
        ["進口警車"] = {
            name = "進口警車",
            txt = "領取進口警車",
            item = {
                ["fordcv11"] = "Ford Crown Victoria", 
                ["19exp"] = "2019 Ford Expedition",
                ["srtday20"] = "Dodge Charger SRT",
                -- ["demonboi"] = "Dodge Demon",
                -- ["21ltz"] = "2021 Chevrolet Camaro",
            }
        },
        -- ["警用機車"] = {
        --     name = "警用機車",
        --     txt = "領取警用機車",
        --     item = {
        --         ["policeb"] = "警用 機車",
        --         ["snbpd"] = "Sinobi Ver.Police",
        --     }
        -- },
        ["訓練用車"] = {
            name = "訓練用車",
            txt = "領取訓練用車",
            item = {
                ["sultan"] = "卡林 王者(不可巡邏)",   
            }
        },
    },
	-- Grade 2
    [2] = {
        ["原生警車"] = {
            -- 主分類標題
            name = "一般警車",
            -- 主分類解說
            txt = "領取一般警車",
            -- 子選單裡面放的車輛
            item = {
                ["police"] = "老式 警車",        
                ["police2"] = "猛牛 警車",       
                ["police3"] = "現代 警車",             
                ["sheriff"] = "純白 警車",
            }
        },
        ["進口警車"] = {
            name = "進口警車",
            txt = "領取進口警車",
            item = {
                ["fordcv11"] = "Ford Crown Victoria", 
                ["19exp"] = "2019 Ford Expedition",
                ["srtday20"] = "Dodge Charger SRT",
                -- ["demonboi"] = "Dodge Demon",
                -- ["21ltz"] = "2021 Chevrolet Camaro",
            }
        },
        ["警用機車"] = {
            name = "警用機車",
            txt = "領取警用機車",
            item = {
                ["policeb"] = "警用 機車",
                ["snbpd"] = "Sinobi Ver.Police",
            }
        },
        ["訓練用車"] = {
            name = "訓練用車",
            txt = "領取訓練用車",
            item = {
                ["sultan"] = "卡林 王者(不可巡邏)",   
            }
        },
    },
	-- Grade 3
    [3] = {
        ["原生警車"] = {
            -- 主分類標題
            name = "一般警車",
            -- 主分類解說
            txt = "領取一般警車",
            -- 子選單裡面放的車輛
            item = {
                ["police"] = "老式 警車",        
                ["police2"] = "猛牛 警車",       
                ["police3"] = "現代 警車",             
                ["sheriff"] = "純白 警車",
            }
        },
        ["進口警車"] = {
            name = "進口警車",
            txt = "領取進口警車",
            item = {
                ["fordcv11"] = "Ford Crown Victoria", 
                ["19exp"] = "2019 Ford Expedition",
                ["srtday20"] = "Dodge Charger SRT",
                ["demonboi"] = "Dodge Demon",
                ["21ltz"] = "2021 Chevrolet Camaro",
            }
        },
        ["警用機車"] = {
            name = "警用機車",
            txt = "領取警用機車",
            item = {
                ["policeb"] = "警用 機車",
                ["snbpd"] = "Sinobi Ver.Police",
            }
        },
        ["訓練用車"] = {
            name = "訓練用車",
            txt = "領取訓練用車",
            item = {
                ["sultan"] = "卡林 王者(不可巡邏)",   
            }
        },
    },
	-- Grade 4
    [4] = {
        ["原生警車"] = {
            -- 主分類標題
            name = "一般警車",
            -- 主分類解說
            txt = "領取一般警車",
            -- 子選單裡面放的車輛
            item = {
                ["police"] = "老式 警車",        
                ["police2"] = "猛牛 警車",       
                ["police3"] = "現代 警車",             
                ["sheriff"] = "純白 警車",
            }
        },
        ["進口警車"] = {
            name = "進口警車",
            txt = "領取進口警車",
            item = {
                ["fordcv11"] = "Ford Crown Victoria", 
                ["19exp"] = "2019 Ford Expedition",
                ["srtday20"] = "Dodge Charger SRT",
                ["demonboi"] = "Dodge Demon",
                ["21ltz"] = "2021 Chevrolet Camaro",
            }
        },
        ["警用機車"] = {
            name = "警用機車",
            txt = "領取警用機車",
            item = {
                ["policeb"] = "警用 機車",
                ["snbpd"] = "Sinobi Ver.Police",
            }
        },
        ["訓練用車"] = {
            name = "訓練用車",
            txt = "領取訓練用車",
            item = {
                ["sultan"] = "卡林 王者(不可巡邏)",   
            }
        },
    },
}

Config.WhitelistedVehicles = {}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
	vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
	vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
	vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
	vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
	vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
	vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
	vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
	vector4(657.315, -218.819, 44.06, 320.0),
	vector4(2118.287, 6040.027, 50.928, 172.0),
	vector4(-106.304, -1127.5530, 30.778, 230.0),
	vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {
    -- [1] = {
    --     name = "heavyarmor",
    --     amount = 2,
    --     info = {},
    --     type = "item",
    --     slot = 1,
    -- },
    -- [2] = {
    --     name = "empty_evidence_bag",
    --     amount = 10,
    --     info = {},
    --     type = "item",
    --     slot = 2,
    -- },
    -- [3] = {
    --     name = "police_stormram",
    --     amount = 1,
    --     info = {},
    --     type = "item",
    --     slot = 3,
    -- },
}

Config.Items = {
    label = "Police Armory",
    slots = 30,
    items = {
        [1] = {
            name = "weapon_nightstick",
            price = 0,
            amount = 99,
            info = {},
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [2] = {
            name = "handcuffs",
            price = 0,
            amount = 99,
            info = {},
            type = "item",
            slot = 2,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [3] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 99,
            info = {},
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [4] = {
            name = "weapon_stungun",
            price = 250,
            amount = 99,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [5] = {
            name = "weapon_pistol",
            price = 500,
            amount = 99,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [6] = {
            name = "radio",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [7] = {
            name = "pistol_ammo",
            price = 6,
            amount = 300,
            info = {},
            type = "item",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [8] = {
            name = "smg_ammo",
            price = 30,
            amount = 300,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [9] = {
            name = "shotgun_ammo",
            price = 8,
            amount = 200,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [10] = {
            name = "rifle_ammo",
            price = 30,
            amount = 500,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [11] = {
            name = "emp_ammo",
            price = 100,
            amount = 500,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [12] = {
            name = "heavyarmor",
            price = 50,
            amount = 99,
            info = {},
            type = "item",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [13] = {
            name = "police_stormram",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [14] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        -- [12] = {
        --     name = "armor",
        --     price = 25,
        --     amount = 99,
        --     info = {},
        --     type = "item",
        --     slot = 12,
        --     authorizedJobGrades = {0, 1, 2, 3, 4}
        -- },
        -- [3] = {
        --     name = "weapon_smg",
        --     price = 1500,
        --     amount = 99,
        --     info = {
        --         serie = "",
        --         attachments = {
        --             {component = "COMPONENT_AT_SCOPE_MACRO_02", label = "1x Scope"},
        --             {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 3,
        --     authorizedJobGrades = {2, 3, 4}
        -- },
        -- [4] = {
        --     name = "weapon_pumpshotgun",
        --     price = 2000,
        --     amount = 99,
        --     info = {
        --         serie = "",
        --         attachments = {
        --             {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 4,
        --     authorizedJobGrades = {2, 3, 4}
        -- },
        -- [5] = {
        --     name = "weapon_carbinerifle",
        --     price = 2800,
        --     amount = 99,
        --     info = {
        --         serie = "",
        --         attachments = {
        --             {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --             {component = "COMPONENT_AT_SCOPE_MEDIUM", label = "3x Scope"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 5,
        --     authorizedJobGrades = {2, 3, 4}
        -- },
        -- [6] = {
        --     name = "weapon_emplauncher",
        --     price = 2000,
        --     amount = 99,
        --     info = {},
        --     type = "weapon",
        --     slot = 6,
        --     authorizedJobGrades = {4}
        -- },
    }
}

Config.VehicleSettings = {
    ["car1"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    },
    ["car2"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    }
}
