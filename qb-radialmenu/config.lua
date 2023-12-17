Config = {}
Config.Keybind = 'F2' -- FiveM Keyboard, this is registered keymapping, so needs changed in keybindings if player already has this mapped.
Config.Toggle = false -- use toggle mode. False requires hold of key
Config.UseWhilstWalking = false -- use whilst walking
Config.EnableExtraMenu = true
Config.Fliptime = 15000

Config.MenuItems = {
    [1] = {
        id = 'citizen',
        title = '市民',
        icon = 'user',
        items = {
            {
                id = 'givenum',
                title = '提供聯繫方式',
                icon = 'address-book',
                type = 'client',
                event = 'qb-phone:client:GiveContactDetails',
                shouldClose = true
            },
            {
                id = 'givekey',
                title = '給予鑰匙',
                icon = 'key',
                type = 'command',
                event = 'givekeys',
                shouldClose = true
            },
            {
                id = 'printer',
                title = '列印東西',
                icon = 'print',
                type = 'client',
                event = 'qb-printer:printer',
                shouldClose = true
            }, 
            {
                id = 'cornerselling',
                title = '街頭販賣',
                icon = 'cannabis',
                type = 'client',
                event = 'qb-drugs:client:cornerselling',
                shouldClose = true
            }, {
                id = 'togglehotdogsell',
                title = '熱狗攤銷售',
                icon = 'hotdog',
                type = 'client',
                event = 'qb-hotdogjob:client:ToggleSell',
                shouldClose = true
            }, {
                id = 'interactions',
                title = '互動',
                icon = 'triangle-exclamation',
                items = {
                    {
                        id = 'playerinvehicle',
                        title = '放入車輛',
                        icon = 'car-side',
                        type = 'client',
                        event = 'police:client:PutPlayerInVehicle',
                        shouldClose = true
                    }, {
                        id = 'playeroutvehicle',
                        title = '帶出車輛',
                        icon = 'car-side',
                        type = 'client',
                        event = 'police:client:SetPlayerOutVehicle',
                        shouldClose = true
                    }, {
                        id = 'stealplayer',
                        title = '搶劫',
                        icon = 'mask',
                        type = 'client',
                        event = 'police:client:RobPlayer',
                        shouldClose = true
                    }, {
                        id = 'escort',
                        title = '扛人',
                        icon = 'user-group',
                        type = 'client',
                        event = 'police:client:KidnapPlayer',
                        shouldClose = true
                    }, {
                        id = 'escort2',
                        title = '護送',
                        icon = 'user-group',
                        type = 'client',
                        event = 'police:client:EscortPlayer',
                        shouldClose = true
                    }, {
                        id = 'escort554',
                        title = '挾持',
                        icon = 'child',
                        type = 'client',
                        event = 'TakeHostage:client:hostage',
                        shouldClose = true
                    }
                }
            }
        }
    },    
    [2] = {
        id = 'general',
        title = '一般',
        icon = 'rectangle-list',
        items = {
            {
                id = 'house',
                title = '房屋互動',
                icon = 'house',
                items = {
                    {
                        id = 'givehousekey',
                        title = '給予房屋鑰匙',
                        icon = 'key',
                        type = 'client',
                        event = 'qb-houses:client:giveHouseKey',
                        shouldClose = true
                    }, {
                        id = 'removehousekey',
                        title = '移除房屋鑰匙',
                        icon = 'key',
                        type = 'client',
                        event = 'qb-houses:client:removeHouseKey',
                        shouldClose = true
                    }, {
                        id = 'togglelock',
                        title = '切換門鎖狀態',
                        icon = 'door-closed',
                        type = 'client',
                        event = 'qb-houses:client:toggleDoorlock',
                        shouldClose = true
                    }, {
                        id = 'decoratehouse',
                        title = '裝飾房屋',
                        icon = 'box',
                        type = 'client',
                        event = 'qb-houses:client:decorate',
                        shouldClose = true
                    }, {
                        id = 'houseLocations',
                        title = '互動位置',
                        icon = 'house',
                        items = {
                            {
                                id = 'setstash',
                                title = '設定藏身處',
                                icon = 'box-open',
                                type = 'client',
                                event = 'qb-houses:client:setLocation',
                                shouldClose = true
                            }, {
                                id = 'setoutift',
                                title = '設定衣櫥',
                                icon = 'shirt',
                                type = 'client',
                                event = 'qb-houses:client:setLocation',
                                shouldClose = true
                            }, {
                                id = 'setlogout',
                                title = '設定登出點',
                                icon = 'door-open',
                                type = 'client',
                                event = 'qb-houses:client:setLocation',
                                shouldClose = true
                            }
                        }
                    }
                }
            }            
        }
    },
    [3] = {
            id = 'clothesmenu',
            title = '服裝',
            icon = 'shirt',
            items = {
                {
                    id = 'Hair',
                    title = '頭髮',
                    icon = 'user',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleClothing',
                    shouldClose = false
                }, {
                    id = 'Ear',
                    title = '耳機',
                    icon = 'ear-deaf',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleProps',
                    shouldClose = false
                }, {
                    id = 'Neck',
                    title = '頸部',
                    icon = 'user-tie',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleClothing',
                    shouldClose = false
                }, {
                    id = 'Top',
                    title = '外套',
                    icon = 'shirt',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleClothing',
                    shouldClose = false
                }, {
                    id = 'Shirt',
                    title = '襯衫',
                    icon = 'shirt',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleClothing',
                    shouldClose = false
                }, {
                    id = 'Pants',
                    title = '褲子',
                    icon = 'user',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleClothing',
                    shouldClose = false
                }, {
                    id = 'Shoes',
                    title = '鞋子',
                    icon = 'shoe-prints',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleClothing',
                    shouldClose = false
                }, {
                    id = 'meer',
                    title = '額外選項',
                    icon = 'plus',
                    items = {
                        {
                            id = 'Hat',
                            title = '帽子',
                            icon = 'hat-cowboy-side',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleProps',
                            shouldClose = false
                        }, {
                            id = 'Glasses',
                            title = '眼鏡',
                            icon = 'glasses',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleProps',
                            shouldClose = false
                        }, {
                            id = 'Visor',
                            title = '遮陽帽',
                            icon = 'hat-cowboy-side',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleProps',
                            shouldClose = false
                        }, {
                            id = 'Mask',
                            title = '面具/口罩',
                            icon = 'masks-theater',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleClothing',
                            shouldClose = false
                        }, {
                            id = 'Vest',
                            title = '背心',
                            icon = 'vest',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleClothing',
                            shouldClose = false
                        }, {
                            id = 'Bag',
                            title = '包包',
                            icon = 'bag-shopping',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleClothing',
                            shouldClose = false
                        }, {
                            id = 'Bracelet',
                            title = '手鐲',
                            icon = 'user',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleProps',
                            shouldClose = false
                        }, {
                            id = 'Watch',
                            title = '手錶',
                            icon = 'stopwatch',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleProps',
                            shouldClose = false
                        }, {
                            id = 'Gloves',
                            title = '手套',
                            icon = 'mitten',
                            type = 'client',
                            event = 'qb-radialmenu:ToggleClothing',
                            shouldClose = false
                        }
                }
            }
        }
    }
}

Config.VehicleDoors = {
    id = 'vehicledoors',
    title = '車門',
    icon = 'car-side',
    items = {
        {
            id = 'door0',
            title = '司機座位門',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door4',
            title = '引擎蓋',
            icon = 'car',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door1',
            title = '副駕駛座位門',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door3',
            title = '右後座位門',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door5',
            title = '後車廂',
            icon = 'car',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door2',
            title = '左後座位門',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }
    }
}

Config.VehicleExtras = {
    id = 'vehicleextras',
    title = '車輛額外功能',
    icon = 'plus',
    items = {
        {
            id = 'extra1',
            title = '額外功能 1',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra2',
            title = '額外功能 2',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra3',
            title = '額外功能 3',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra4',
            title = '額外功能 4',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra5',
            title = '額外功能 5',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra6',
            title = '額外功能 6',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra7',
            title = '額外功能 7',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra8',
            title = '額外功能 8',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra9',
            title = '額外功能 9',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra10',
            title = '額外功能 10',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra11',
            title = '額外功能 11',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra12',
            title = '額外功能 12',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra13',
            title = '額外功能 13',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }
    }
}

Config.VehicleSeats = {
    id = 'vehicleseats',
    title = '車輛座位',
    icon = 'chair',
    items = {}
}

Config.JobInteractions = {
    ["ambulance"] = {
        {
            id = 'statuscheck',
            title = '檢查健康狀態',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        }, {
            id = 'aedp',
            title = '使用aed',
            icon = 'user-doctor',
            type = 'client',
            event = 'hospital:client:AEDPlayer',
            shouldClose = true
        }, {
            id = 'revivep',
            title = '治療',
            icon = 'user-doctor',
            type = 'client',
            event = 'hospital:client:RevivePlayer',
            shouldClose = true
        }, {
            id = 'treatwounds',
            title = '傷口緊急處理',
            icon = 'bandage',
            type = 'client',
            event = 'hospital:client:TreatWounds',
            shouldClose = true
        }, {
            id = 'emergencybutton2',
            title = '緊急按鈕',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        }, {
            id = 'escort',
            title = '護送',
            icon = 'user-group',
            type = 'client',
            event = 'police:client:EscortPlayer',
            shouldClose = true
        }, 
        -- {
        --     id = 'stretcheroptions',
        --     title = '擔架',
        --     icon = 'bed-pulse',
        --     items = {
        --         {
        --             id = 'spawnstretcher',
        --             title = '拿出擔架',
        --             icon = 'plus',
        --             type = 'client',
        --             event = 'qb-radialmenu:client:TakeStretcher',
        --             shouldClose = false
        --         }, {
        --             id = 'despawnstretcher',
        --             title = '放回擔架',
        --             icon = 'minus',
        --             type = 'client',
        --             event = 'qb-radialmenu:client:RemoveStretcher',
        --             shouldClose = false
        --         }
        --     }
        -- }        
    },
    ["taxi"] = {
        {
            id = 'togglemeter',
            title = '顯示/隱藏計費表',
            icon = 'eye-slash',
            type = 'client',
            event = 'qb-taxi:client:toggleMeter',
            shouldClose = false
        }, {
            id = 'togglemouse',
            title = '啟動/停止計費表',
            icon = 'hourglass-start',
            type = 'client',
            event = 'qb-taxi:client:enableMeter',
            shouldClose = true
        }, {
            id = 'npc_mission',
            title = 'NPC 任務',
            icon = 'taxi',
            type = 'client',
            event = 'qb-taxi:client:DoTaxiNpc',
            shouldClose = true
        }
    },
    ["tow"] = {
        {
            id = 'togglenpc',
            title = '切換 NPC',
            icon = 'toggle-on',
            type = 'client',
            event = 'jobs:client:ToggleNpc',
            shouldClose = true
        }, {
            id = 'towvehicle',
            title = '拖吊車輛',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        }
    },    
    ["mechanic"] = {
        {
            id = 'towvehicle',
            title = '拖吊車輛',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        }
    },
    ["police"] = {
        {
            id = 'emergencybutton',
            title = '緊急按鈕',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        }, {
            id = 'ImpoundVehicle',
            title = '拖吊',
            icon = 'circle-info',
            type = 'command',
            event = 'depot',
            shouldClose = true
        }, {
            id = 'ImpoundVehicle',
            title = '扣押車輛',
            icon = 'car',
            type = 'client',
            event = 'police:client:ImpoundVehicle',
            shouldClose = true
        }, {
            id = 'resethouse',
            title = '重設房屋鎖',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = '撤銷駕照',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, {
            id = 'UnlockClosestVehicle',
            title = '解鎖車輛',
            icon = 'unlock',
            type = 'client',
            event = 'vehiclekeys:client:UnlockClosestVehicle',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = '警察操作',
            icon = 'list-check',
            items = {
                {
                    id = 'statuscheck',
                    title = '檢查健康狀況',
                    icon = 'heart-pulse',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = '檢查狀態',
                    icon = 'question',
                    type = 'client',
                    event = 'police:client:CheckStatus',
                    shouldClose = true
                }, {
                    id = 'escort',
                    title = '護送',
                    icon = 'user-group',
                    type = 'client',
                    event = 'police:client:EscortPlayer',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = '搜查',
                    icon = 'magnifying-glass',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = '監禁',
                    icon = 'user-lock',
                    type = 'client',
                    event = 'police:client:JailPlayer',
                    shouldClose = true
                }
            }
        },
    },
    ["hotdog"] = {
        {
            id = 'togglesell',
            title = '切換販售',
            icon = 'hotdog',
            type = 'client',
            event = 'qb-hotdogjob:client:ToggleSell',
            shouldClose = true
        }
    }
}

Config.TrunkClasses = {
    [0] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [1] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sedans
    [2] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- SUVs
    [3] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [4] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Muscle
    [5] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports Classics
    [6] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports
    [7] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Super
    [8] = {allowed = false, x = 0.0, y = -1.0, z = 0.25}, -- Motorcycles
    [9] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Off-road
    [10] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Industrial
    [11] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Utility
    [12] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Vans
    [13] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Cycles
    [14] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Boats
    [15] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Helicopters
    [16] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Planes
    [17] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Service
    [18] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Emergency
    [19] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Military
    [20] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Commercial
    [21] = {allowed = true, x = 0.0, y = -1.0, z = 0.25} -- Trains
}

Config.ExtrasEnabled = true

Config.Commands = {
    ["top"] = {
        Func = function() ToggleClothing("Top") end,
        Sprite = "top",
        Desc = "Take your shirt off/on",
        Button = 1,
        Name = "Torso"
    },
    ["gloves"] = {
        Func = function() ToggleClothing("gloves") end,
        Sprite = "gloves",
        Desc = "Take your gloves off/on",
        Button = 2,
        Name = "Gloves"
    },
    ["visor"] = {
        Func = function() ToggleProps("visor") end,
        Sprite = "visor",
        Desc = "Toggle hat variation",
        Button = 3,
        Name = "Visor"
    },
    ["bag"] = {
        Func = function() ToggleClothing("Bag") end,
        Sprite = "bag",
        Desc = "Opens or closes your bag",
        Button = 8,
        Name = "Bag"
    },
    ["shoes"] = {
        Func = function() ToggleClothing("Shoes") end,
        Sprite = "shoes",
        Desc = "Take your shoes off/on",
        Button = 5,
        Name = "Shoes"
    },
    ["vest"] = {
        Func = function() ToggleClothing("Vest") end,
        Sprite = "vest",
        Desc = "Take your vest off/on",
        Button = 14,
        Name = "Vest"
    },
    ["hair"] = {
        Func = function() ToggleClothing("hair") end,
        Sprite = "hair",
        Desc = "Put your hair up/down/in a bun/ponytail.",
        Button = 7,
        Name = "Hair"
    },
    ["hat"] = {
        Func = function() ToggleProps("Hat") end,
        Sprite = "hat",
        Desc = "Take your hat off/on",
        Button = 4,
        Name = "Hat"
    },
    ["glasses"] = {
        Func = function() ToggleProps("Glasses") end,
        Sprite = "glasses",
        Desc = "Take your glasses off/on",
        Button = 9,
        Name = "Glasses"
    },
    ["ear"] = {
        Func = function() ToggleProps("Ear") end,
        Sprite = "ear",
        Desc = "Take your ear accessory off/on",
        Button = 10,
        Name = "Ear"
    },
    ["neck"] = {
        Func = function() ToggleClothing("Neck") end,
        Sprite = "neck",
        Desc = "Take your neck accessory off/on",
        Button = 11,
        Name = "Neck"
    },
    ["watch"] = {
        Func = function() ToggleProps("Watch") end,
        Sprite = "watch",
        Desc = "Take your watch off/on",
        Button = 12,
        Name = "Watch",
        Rotation = 5.0
    },
    ["bracelet"] = {
        Func = function() ToggleProps("Bracelet") end,
        Sprite = "bracelet",
        Desc = "Take your bracelet off/on",
        Button = 13,
        Name = "Bracelet"
    },
    ["mask"] = {
        Func = function() ToggleClothing("Mask") end,
        Sprite = "mask",
        Desc = "Take your mask off/on",
        Button = 6,
        Name = "Mask"
    }
}

local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

Config.ExtraCommands = {
    ["pants"] = {
        Func = function() ToggleClothing("Pants", true) end,
        Sprite = "pants",
        Desc = "Take your pants off/on",
        Name = "Pants",
        OffsetX = -0.04,
        OffsetY = 0.0
    },
    ["shirt"] = {
        Func = function() ToggleClothing("Shirt", true) end,
        Sprite = "shirt",
        Desc = "Take your shirt off/on",
        Name = "shirt",
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ["reset"] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nothing To Reset', 'error')
            end
        end,
        Sprite = "reset",
        Desc = "Revert everything back to normal",
        Name = "reset",
        OffsetX = 0.12,
        OffsetY = 0.2,
        Rotate = true
    },
    ["bagoff"] = {
        Func = function() ToggleClothing("Bagoff", true) end,
        Sprite = "bagoff",
        SpriteFunc = function()
            local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
            local BagOff = LastEquipped["Bagoff"]
            if LastEquipped["Bagoff"] then
                if bags[BagOff.Drawable] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            end
            if Bag ~= 0 then
                if bags[Bag] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            else
                return false
            end
        end,
        Desc = "Take your bag off/on",
        Name = "bagoff",
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}