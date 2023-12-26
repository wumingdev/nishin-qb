Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.PauseMapText = '' -- Text shown above the map when ESC is pressed. If left empty 'FiveM' will appear
Config.HarnessUses = 20
Config.DamageNeeded = 100.0 -- amount of damage till you can push your vehicle. 0-1000

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 3600, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = false -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
    controls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
}

Config.Binoculars = {
    zoomSpeed = 10.0, -- camera zoom speed
    storeBinocularsKey = 177 -- backspace by default
}

Config.AIResponse = {
    wantedLevels = false, -- if true, you will recieve wanted levels
    dispatchServices = { -- AI dispatch services
        [1] = false, -- Police Vehicles
        [2] = false, -- Police Helicopters
        [3] = false, -- Fire Department Vehicles
        [4] = false, -- Swat Vehicles
        [5] = false, -- Ambulance Vehicles
        [6] = false, -- Police Motorcycles
        [7] = false, -- Police Backup
        [8] = false, -- Police Roadblocks
        [9] = false, -- PoliceAutomobileWaitPulledOver
        [10] = false, -- PoliceAutomobileWaitCruising
        [11] = false, -- Gang Members
        [12] = false, -- Swat Helicopters
        [13] = false, -- Police Boats
        [14] = false, -- Army Vehicles
        [15] = false -- Biker Backup
    }
}

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    isEnabled = false, -- If set to true, then discord rich presence will be enabled
    applicationId = '00000000000000000', -- The discord application id
    iconLarge = 'logo_name', -- The name of the large icon
    iconLargeHoverText = 'This is a Large icon with text', -- The hover text of the large icon
    iconSmall = 'small_logo_name', -- The name of the small icon
    iconSmallHoverText = 'This is a Small icon with text', -- The hover text of the small icon
    updateRate = 60000, -- How often the player count should be updated
    showPlayerCount = true, -- If set to true the player count will be displayed in the rich presence
    maxPlayers = 48, -- Maximum amount of players
    buttons = {
        {
            text = 'First Button!',
            url = 'fivem://connect/localhost:30120'
        },
        {
            text = 'Second Button!',
            url = 'fivem://connect/localhost:30120'
        }
    }
}

Config.Density = {
    parked = 0.8,
    vehicle = 0.8,
    multiplier = 0.8,
    peds = 0.8,
    scenario = 0.8
}

Config.Disable = {
    hudComponents = {1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    controls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true, -- false disables ammo display
    ambience = false, -- disables distance sirens, distance car alarms, flight music, etc
    idleCamera = true, -- disables the idle cinematic camera
    vestDrawable = false, -- disables the vest equipped when using heavy armor
    pistolWhipping = true, -- disables pistol whipping
}

Config.Consumables = {
    eat = { -- default food items
        ['tosti'] = math.random(10, 20),
        ['seaweed'] = math.random(5, 10),
        ['sandwich'] = math.random(20, 25),
        ['hot_toast'] = math.random(20, 25),
        ['twerks_candy'] = math.random(5, 10),
        ['snikkel_candy'] = math.random(5, 10),
        ['hotdog'] =  math.random(20, 25),
        ['strawberry'] =  math.random(2, 5),
        ['orange'] =  math.random(2, 5),
        ['watermelon'] =  math.random(2, 8),
        ['banana'] =  math.random(2, 5),
        ['jelly'] =  math.random(2, 5),
        ['croissant'] =  math.random(2, 5),
        ['rice'] =  math.random(2, 5),
        ['kimchi'] =  math.random(2, 5),
    },
    eatplayers = {
        ['grilled_chicken'] = math.random(10, 20),
        ['yogurt'] = math.random(20, 30),
        ['yakult']  =  math.random(20, 30),
        ['donut_straberry'] = math.random(20, 30),
        ['donut_honey'] = math.random(20, 30),
        ['donut_chocolate'] = math.random(20, 30),
        ['donut_white_chocolate'] = math.random(20, 30),
        ['salmon_sashimi'] =  math.random(30, 40),
        ['salmon_sushi'] =  math.random(50, 60),
        ['tuna_sashimi'] =  math.random(30, 40),
        ['tuna_sushi'] =  math.random(40, 50),
        ['katsudon'] =  math.random(40, 50),
        ['tonkotsu_ramen'] =  math.random(40, 50),
        ['sukiyaki_udon'] =  math.random(40, 50),
        ['butter_crab'] =  math.random(40, 50),
        ['clean_soba'] =  math.random(40, 50),
        ['lemon_marlin'] =  math.random(40, 50),
        ['strawberry_cake'] =  math.random(40, 50),
        ['cat_ramen'] =  math.random(40, 50),
        ['cat_shrimp_rice'] =  math.random(40, 50),
        ['cat_yakiniku'] =  math.random(40, 50),
        ['cat_don'] =  math.random(40, 50),
        ['cat_bento'] =  math.random(40, 50),
        ['cat_sushi'] =  math.random(40, 50),
        ['macaron'] =  math.random(40, 50),
        ['taiyaki'] =  math.random(40, 50),
        ['sashimi'] = math.random(40, 50),
        ['bacon'] = math.random(40, 50),
        ['pandan'] = math.random(40, 50),
        ['rice_noodle'] = math.random(40, 50),
        ['pork_rice'] = math.random(40, 50),
        ['sinramen'] = math.random(40, 50),
        ['milk_rice'] = math.random(40, 50),
        ['plain_noodles'] = math.random(40, 50),
        ['croissant_egg'] = math.random(40, 50),
        ['hotteok'] = math.random(40, 50),
        ['heibai'] = math.random(40, 50),
        ['crispy_oily'] = math.random(20, 30),
        ['crab_hamburger'] = math.random(40, 50),
        ['sea_leg'] = math.random(20, 30),
        ['m_hamburger'] = math.random(40, 50),
        ['franchfries'] = math.random(30, 40),
        ['salad'] = math.random(10, 20),
        ['wings'] = math.random(30, 40),
        ['pandan_cake'] =  math.random(30, 40),

    },
    drink = { -- default drink items
        ['water_bottle'] = math.random(10, 20),
        ['kurkakola'] = math.random(10, 20),
        ['milk'] = math.random(5, 10),
        ['coconut_milk'] = math.random(5, 10),
        ['coffee'] = math.random(5, 10),
        ['seaweed_juice'] = math.random(10, 20),
        ['sprite'] = math.random(30, 40),
        ['lemonred'] = math.random(30, 40),
        

    },
    drinkplayers = {
        ['brkmilk']  =  math.random(10, 20),
        ['pearlmilk']  =  math.random(10, 20),

        -- 日料
        ['watermelon_juice']  = math.random(30, 40),
        ['strawberry_milk']  = math.random(30, 40),
        ['banana_milk']  = math.random(30, 40),
        ['orange_juice']  = math.random(30, 40),

        -- 貓咪咖啡廳
        ['bubble_tea']  = math.random(30, 40),
        ['go_hospital']  = math.random(30, 40),
        ['dream_poppy']  = math.random(30, 40),
        ['cat_puding']  = math.random(30, 40),
        ['cat_happy']  = math.random(30, 40),
        ['cat_coffee']  = math.random(30, 40),
        -- 習吧餐廳
        ['long_tea'] =  math.random(30, 40),
        ['margabata'] =  math.random(30, 40),
        ['mahonet'] =  math.random(30, 40),
        ['mojito'] =  math.random(30, 40),
        ['screwdriver'] =  math.random(30, 40),
        ['red_tangyuan'] =  math.random(30, 40),
        ['mango_pomelo'] =  math.random(30, 40),
        ['lemon_tea'] =  math.random(30, 40),
        ['emo_wang'] =  math.random(30, 40),
        ["coconut_latte"] =  math.random(30, 40),
        ['mung_milk'] =  math.random(30, 40),
        ['black_tea'] =  math.random(30, 40),
        ['fig_tea'] =  math.random(30, 40),
        ['panda_drink'] =  math.random(30, 40),

    },
    alcohol = { -- default alcohol items
        ['whiskey'] = math.random(40, 50),
        ['beer'] = math.random(40, 50),
        ['vodka'] = math.random(40, 50),
        ['sake'] = math.random(40, 50),
        ['umeshu'] = math.random(40, 50),
    },
    custom = { -- put any custom items here
    -- ['newitem'] = {
    --     progress = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     animation = {
    --         animDict = 'amb@prop_human_bbq@male@base',
    --         anim = 'base',
    --         flags = 8,
    --     },
    --     prop = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     replenish = {'''
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40),
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
    }
}

Config.Fireworks = {
    delay = 5, -- time in s till it goes off
    items = { -- firework items
        'firework1',
        'firework2',
        'firework3',
        'firework4'
    }
}

Config.BlacklistedScenarios = {
    types = {
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE_BIKE'
    },
    groups = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`
    }
}

Config.BlacklistedVehs = {
    [`shamal`] = true,
    [`luxor`] = true,
    [`luxor2`] = true,
    [`jet`] = true,
    [`lazer`] = true,
    [`buzzard`] = true,
    [`buzzard2`] = true,
    [`annihilator`] = true,
    [`savage`] = true,
    [`titan`] = true,
    [`rhino`] = true,
    [`firetruck`] = true,
    [`mule`] = true,
    [`maverick`] = true,
    [`blimp`] = true,
    [`airtug`] = true,
    [`camper`] = true,
    [`hydra`] = true,
    [`oppressor`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true
}

Config.WeapDraw = {
    variants = {130, 122, 3, 6, 8},
    weapons = {
        --'WEAPON_STUNGUN',
        'WEAPON_PISTOL',
        'WEAPON_PISTOL_MK2',
        'WEAPON_COMBATPISTOL',
        'WEAPON_APPISTOL',
        'WEAPON_PISTOL50',
        'WEAPON_REVOLVER',
        'WEAPON_SNSPISTOL',
        'WEAPON_HEAVYPISTOL',
        'WEAPON_VINTAGEPISTOL'
    }
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09, -349.35, 44.74), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02b'},
    {coords = vector3(285.28, -355.78, 45.13), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02a'},
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    [1] = { -- Elevator @ labs
        [1] = { -- up
            poly = {coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2},
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
        [2] = { -- down
            poly = {coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2},
            allowVeh = false,
            label = false
        }
    },
    [2] = { --Coke Processing Enter/Exit
        [1] = {
            poly = {coords = vector3(909.49, -1589.22, 30.51), heading = 92.24, length = 2, width = 2},
            allowVeh = false,
            label = '[E] 離開'
        },
        [2] = {
            poly = {coords = vector3(1088.81, -3187.57, -38.99), heading = 181.7, length = 2, width = 2},
            allowVeh = false,
            label = '[E] 進入 Coke 工廠'
        }
    },
    [3] = { -- Elevator @ labs
        [1] = { -- up
            poly = {coords = vector3(332.4395, -595.5488, 43.2841), heading = 239.9088, length = 2, width = 2},
            allowVeh = false, -- whether or not to allow use in vehicle
            label = '2樓' -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
        [2] = { -- down
            poly = {coords = vector3(344.5322, -581.9448, 28.7980), heading = 69.5047, length = 2, width = 2},
            allowVeh = false,
            label = '1樓'
        },
        [3] = { -- down
        poly = {coords = vector3(338.3823, -584.1552, 74.1617), heading = 69.5047, length = 2, width = 2},
        allowVeh = false,
        label = '頂樓'
        }
    },
}


Config.CarWash = {
    dirtLevel = 0.1, -- threshold for the dirt level to be counted as dirty
    defaultPrice = 20, -- default price for the carwash
    locations = {
        [1] = {coords = vector3(174.81, -1736.77, 28.87), length = 7.0, width = 8.8, heading = 359}, -- South Los Santos Carson Avenue
        [2] = {coords = vector3(25.2, -1391.98, 28.91), length = 6.6, width = 8.2, heading = 0}, -- South Los Santos Innocence Boulevard
        [3] = {coords = vector3(-74.27, 6427.72, 31.02), length = 9.4, width = 8, heading = 315}, -- Paleto Bay Boulevard
        [4] = {coords = vector3(1362.69, 3591.81, 34.5), length = 6.4, width = 8, heading = 21}, -- Sandy Shores
        [5] = {coords = vector3(-699.84, -932.68, 18.59), length = 11.8, width = 5.2, heading = 0} -- Little Seoul Gas Station
    }
}