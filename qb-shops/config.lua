Config = {}
Config.UseTruckerJob = false -- true = The shops stock is based on when truckers refill it | false = shop inventory never runs out
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.ShopsInvJsonFile = './json/shops-inventory.json' -- json file location

Config.SellCasinoChips = {
    coords = vector4(965.8624, 48.6497, 70.8894, 149.2633),
    radius = 1.5,
    ped = 's_m_y_casino_01'
}

-- optional requiredJob = {'police', 'ambulance'}
-- optional requiredGang = {'ballas', 'vagps'}
-- optional requiredLicense = {'driver', 'business', 'weapon'}

Config.Products = {
    ['normal'] = {
        {name = 'tosti',         price = 10,   amount = 50,   info = {}, type = 'item'},
        {name = 'water_bottle',  price = 2,   amount = 50,   info = {}, type = 'item'},
        {name = 'kurkakola',     price = 10,   amount = 50,   info = {}, type = 'item'},
        {name = 'twerks_candy',  price = 10,   amount = 50,   info = {}, type = 'item'},
        {name = 'snikkel_candy', price = 10,   amount = 50,   info = {}, type = 'item'},
        {name = 'sandwich',      price = 10,   amount = 50,   info = {}, type = 'item'},
        {name = 'beer',          price = 15,   amount = 50,   info = {}, type = 'item'},
        {name = 'whiskey',       price = 30,  amount = 50,   info = {}, type = 'item'},
        {name = 'vodka',         price = 30,  amount = 50,   info = {}, type = 'item'},
        {name = 'bandage',       price = 100, amount = 50,   info = {}, type = 'item'},
        {name = 'lighter',       price = 2,   amount = 50,   info = {}, type = 'item'},
        {name = 'rolling_paper', price = 2,   amount = 5000, info = {}, type = 'item'},
        {name = 'hotdog',        price = 10,   amount = 50,   info = {}, type = 'item', requiredJob  = { 'hotdog' }},

    },
    ['liquor'] = {
        {name = 'beer',    price = 10,  amount = 50, info = {}, type = 'item'},
        {name = 'whiskey', price = 13, amount = 50, info = {}, type = 'item'},
        {name = 'vodka',   price = 15, amount = 50, info = {}, type = 'item'},
    },
    ['hardware'] = {
        {name = 'lockpick',          price = 50, amount = 50,  info = {}, type = 'item'},
        {name = 'weapon_wrench',     price = 250, amount = 250, info = {}, type = 'item'},
        {name = 'weapon_hammer',     price = 250, amount = 250, info = {}, type = 'item'},
        {name = 'repairkit',         price = 50, amount = 50,  info = {}, type = 'item', requiredJob  = { 'mechanic' }},
        {name = 'screwdriverset',    price = 350, amount = 50,  info = {}, type = 'item'},
        {name = 'phone',             price = 850, amount = 50,  info = {}, type = 'item'},
        {name = 'radio',             price = 250, amount = 50,  info = {}, type = 'item'},
        {name = 'binoculars',        price = 50,  amount = 50,  info = {}, type = 'item'},
        -- {name = 'firework1',         price = 50,  amount = 50,  info = {}, type = 'item'},
        -- {name = 'firework2',         price = 50,  amount = 50,  info = {}, type = 'item'},
        -- {name = 'firework3',         price = 50,  amount = 50,  info = {}, type = 'item'},
        -- {name = 'firework4',         price = 50,  amount = 50,  info = {}, type = 'item'},
        {name = 'fitbit',            price = 400, amount = 150, info = {}, type = 'item'},
        {name = 'cleaningkit',       price = 25, amount = 50,  info = {}, type = 'item', requiredJob  = { 'mechanic'   }},
        {name = 'advancedrepairkit', price = 100, amount = 50,  info = {}, type = 'item', requiredJob = { 'mechanic' }},
    },
    -- ['weedshop'] = {
    --     {name = 'joint',          price = 10,  amount = 50,   info = {}, type = 'item'},
    --     {name = 'weapon_poolcue', price = 100, amount = 50,   info = {}, type = 'item'},
    --     {name = 'weed_nutrition', price = 20,  amount = 50,   info = {}, type = 'item'},
    --     {name = 'empty_weed_bag', price = 2,   amount = 1000, info = {}, type = 'item'},
    --     {name = 'rolling_paper',  price = 2,   amount = 1000, info = {}, type = 'item'},
    -- },
    ['gearshop'] = {
        {name = 'diving_gear', price = 250,    amount = 10,  info = {}, type = 'item'},
        {name = 'diving_fill', price = 50,     amount = 10,  info = {}, type = 'item'},
    },
    ['leisureshop'] = {
        {name = 'parachute',     price = 500,  amount = 10,  info = {}, type = 'item'},
        {name = 'binoculars',    price = 50,   amount = 50,  info = {}, type = 'item'},
    },
    ['meat'] = {
        {name = 'pig_meat',      price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'haslet_raw',    price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'chicken',       price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'beef',          price = 20,   amount = 50,  info = {}, type = 'item'},

    },
    ['vegetable'] = {
        -- {name = 'meal',          price = 5,    amount = 10,  info = {}, type = 'item'},
        {name = 'seaweed',       price = 5,    amount = 10,  info = {}, type = 'item'},
        {name = 'soy_sauce',     price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'butter',        price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'barbecue_sauce',price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'flour',         price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'salt',          price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'sugar',         price = 3,    amount = 50,  info = {}, type = 'item'},
        {name = 'vinegar',       price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'milk',          price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'milk_sago',     price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'coconut_milk',  price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'lemon',         price = 5,    amount = 50,  info = {}, type = 'item'},  
        {name = 'strawberry',    price = 5,    amount = 50,  info = {}, type = 'item'},  
        {name = 'vegetable',     price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'spring_onion',  price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'onion',         price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'watermelon',    price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'banana',        price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'orange',        price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'fruit_box',     price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'coffee_beans',  price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'tea_bag',       price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'drink_powder',  price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'rice_flour',    price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'udon',          price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'ramen',         price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'soba',          price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'jelly',         price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'pearl',         price = 5,    amount = 50,  info = {}, type = 'item'}, 
        {name = 'rice',          price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'egg',           price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'croissant',     price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'yotofu',        price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'tangyuan',      price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'kimchi',        price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'red_beans',     price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'mung_bean',     price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'nut',           price = 5,    amount = 50,  info = {}, type = 'item'},
        {name = 'wasanbon',      price = 5,    amount = 50,  info = {}, type = 'item'},
    }, 
    ['seefood'] = { 
        {name = 'tuna',          price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'salmon',        price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'crab',          price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'marlin',        price = 20,   amount = 50,  info = {}, type = 'item'},
        {name = 'shrimp',        price = 10,   amount = 50,  info = {}, type = 'item'},
        {name = 'taco',          price = 10,   amount = 50,  info = {}, type = 'item'},
    },
    ['weapons'] = {
        {name = 'weapon_wrench', price = 250,  amount = 250, info = {}, type = 'item'},
        {name = 'weapon_hammer', price = 250,  amount = 250, info = {}, type = 'item'},
        {name = 'weapon_bat',    price = 250,  amount = 250, info = {}, type = 'weapon'},
        {name = 'weapon_hatchet',price = 250,  amount = 250, info = {}, type = 'weapon'},
        {name = 'pistol_ammo',   price = 250,  amount = 250, info = {}, type = 'item',   requiredLicense = { 'weapon' }},
        {name = 'weapon_pistol', price = 2500, amount = 5,   info = {}, type = 'weapon', requiredLicense = { 'weapon' }},
        -- {name = 'weapon_snspistol',     price = 15000, amount = 5,   info = {}, type = 'weapon'},
        -- {name = 'weapon_knife',         price = 250,  amount = 250, info = {}, type = 'weapon'},
        -- {name = 'weapon_vintagepistol', price = 40000, amount = 5,   info = {}, type = 'weapon'},
    },
}

Config.Locations = {
    -- 24/7 Locations
    ['247supermarket'] = {
        ['label'] = '超商',
        ['coords'] = vector4(24.47, -1346.62, 29.5, 271.66),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(26.45, -1315.51, 29.62, 0.07)
    },

    ['247supermarket2'] = {
        ['label'] = '超商',
        ['coords'] = vector4(-3039.54, 584.38, 7.91, 17.27),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-3047.95, 590.71, 7.62, 19.53)
    },

    ['247supermarket3'] = {
        ['label'] = '超商',
        ['coords'] = vector4(-3242.97, 1000.01, 12.83, 357.57),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(-3245.76, 1005.25, 12.83, 269.45)
    },

    ['247supermarket4'] = {
        ['label'] = '超商',
        ['coords'] = vector4(1728.07, 6415.63, 35.04, 242.95),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1741.76, 6419.61, 35.04, 6.83)
    },

    ['247supermarket5'] = {
        ['label'] = '超商',
        ['coords'] = vector4(1959.82, 3740.48, 32.34, 301.57),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(1963.81, 3750.09, 32.26, 302.46)
    },

    ['247supermarket6'] = {
        ['label'] = '超商',
        ['coords'] = vector4(549.13, 2670.85, 42.16, 99.39),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(541.54, 2663.53, 42.17, 120.51)
    },

    ['247supermarket7'] = {
        ['label'] = '超商',
        ['coords'] = vector4(2677.47, 3279.76, 55.24, 335.08),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(2662.19, 3264.95, 55.24, 168.55)
    },

    ['247supermarket8'] = {
        ['label'] = '超商',
        ['coords'] = vector4(2556.66, 380.84, 108.62, 356.67),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(2553.24, 399.73, 108.56, 344.86)
    },
    ['247supermarket9'] = {
        ['label'] = '超商',
        ['coords'] = vector4(372.66, 326.98, 103.57, 253.73),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },
    ['247supermarket10'] = {
        ['label'] = '超商',
        ['coords'] = vector4(    160.9959, 6641.6475, 31.6989, 223.7024),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },
    ['247supermarket11'] = {
        ['label'] = '超商',
        ['coords'] = vector4(812.7676, -781.9722, 26.1750, 268.3111),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 2,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },
    --蔬果批發商
    ['vegetable1'] = {
        ['label'] = '蔬果材料批發商',
        ['coords'] = vector4(-1206.1691, -1460.6835, 4.3739, 308.6877),
        ['ped'] = 's_m_m_autoshop_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = '開啟商店',
        ['products'] = Config.Products['vegetable'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 35,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },
    --海鮮批發商
    ['seafood1'] = {
        ['label'] = '海鮮批發商',
        ['coords'] = vector4(-1253.6267, -1444.5674, 4.3739, 34.5952),
        ['ped'] = 's_m_m_autoshop_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = '開啟商店',
        ['products'] = Config.Products['seefood'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 35,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },
    --肉類批發商
    ['meat1'] = {
        ['label'] = '肉類批發商',
        ['coords'] = vector4(961.0447, -2103.2302, 31.9702, 127.8385),
        ['ped'] = 's_m_m_autoshop_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = '開啟商店',
        ['products'] = Config.Products['meat'],
        ['showblip'] = true,
        ['blipsprite'] = 141,
        ['blipscale'] = 1.0,
        ['blipcolor'] = 35,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },
    -- LTD 複合商店 Locations
    ['ltdgasoline'] = {
        ['label'] = 'LTD 複合商店',
        ['coords'] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 51,
        ['delivery'] = vector4(-40.51, -1747.45, 29.29, 326.39)
    },

    ['ltdgasoline2'] = {
        ['label'] = 'LTD 複合商店',
        ['coords'] = vector4(-706.06, -913.97, 19.22, 88.04),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 51,
        ['delivery'] = vector4(-702.89, -917.44, 19.21, 181.96)
    },

    ['ltdgasoline3'] = {
        ['label'] = 'LTD 複合商店',
        ['coords'] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 51,
        ['delivery'] = vector4(-1829.29, 801.49, 138.41, 41.39)
    },

    ['ltdgasoline4'] = {
        ['label'] = 'LTD 複合商店',
        ['coords'] = vector4(1164.71, -322.94, 69.21, 101.72),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 51,
        ['delivery'] = vector4(1160.62, -312.06, 69.28, 3.77)
    },

    ['ltdgasoline5'] = {
        ['label'] = 'LTD 複合商店',
        ['coords'] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 51,
        ['delivery'] = vector4(1702.68, 4917.28, 42.22, 139.27)
    },

    -- Rob's Liquor Locations
    ['robsliquor'] = {
        ['label'] = '酒品專賣店',
        ['coords'] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 83,
        ['delivery'] = vector4(-1226.92, -901.82, 12.28, 213.26)
    },

    ['robsliquor2'] = {
        ['label'] = '酒品專賣店',
        ['coords'] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 83,
        ['delivery'] = vector4(-1468.29, -387.61, 38.79, 220.13)
    },

    ['robsliquor3'] = {
        ['label'] = '酒品專賣店',
        ['coords'] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 83,
        ['delivery'] = vector4(-2961.49, 376.25, 15.02, 111.41)
    },

    ['robsliquor4'] = {
        ['label'] = '酒品專賣店',
        ['coords'] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 83,
        ['delivery'] = vector4(1194.52, 2722.21, 38.62, 9.37)
    },
    ['robsliquor5'] = {
        ['label'] = '酒品專賣店',
        ['coords'] = vector4(1134.2, -982.91, 46.42, 277.24),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 83,
        ['delivery'] = vector4(1129.73, -989.27, 45.97, 280.98)
    },
    ['robsliquor6'] = {
        ['label'] = '酒品專賣店',
        ['coords'] = vector4(-160.5991, 6320.7817, 31.5869, 319.3700),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Shop',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 93,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 83,
        ['delivery'] = vector4(1129.73, -989.27, 45.97, 280.98)
    },

    -- Hardware Store Locations
    ['hardware'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(45.68, -1749.04, 29.61, 53.13),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Open Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(89.15, -1745.29, 30.09, 315.25)
    },
    ['hardware2'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(2747.71, 3472.85, 55.67, 255.08),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Open Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(2704.68, 3457.21, 55.54, 176.28)
    },
    ['hardware3'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(-421.83, 6136.13, 31.88, 228.2),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(-438.25, 6146.9, 31.48, 136.99)
    },
    ['hardware4'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(-220.4952, -1338.7269, 31.3005, 20.3488),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Open Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(89.15, -1745.29, 30.09, 315.25)
    },
    ['hardware5'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(948.1015, -966.0215, 39.4999, 90.7575),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Open Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(89.15, -1745.29, 30.09, 315.25)
    },
    ['hardware6'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(143.4201, -3008.1401, 7.0409, 132.1360),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(-438.25, 6146.9, 31.48, 136.99)
    },
    ['hardware7'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(833.1812, -823.2662, 26.3534, 359.6673),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(-438.25, 6146.9, 31.48, 136.99)
    },
    ['hardware8'] = {
        ['label'] = '五金行',
        ['coords'] = vector4(-1418.7396, -454.4716, 35.9097, 29.3110),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Hardware Store',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0,
        ['blipcolor'] = 46,
        ['delivery'] = vector4(-438.25, 6146.9, 31.48, 136.99)
    },

    -- Ammunation Locations
    ['ammunation'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(-659.0833, -939.2165, 21.8293, 95.7865),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-660.61, -938.14, 21.83, 167.22)
    },
    ['ammunation2'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(813.7240, -2155.2371, 29.6192, 2.0080),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(820.97, -2146.7, 28.71, 359.98)
    },
    ['ammunation3'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(1697.7649, 3757.6677, 34.7053, 135.4270),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1687.17, 3755.47, 34.34, 163.69)
    },
    ['ammunation4'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(-326.3271, 6081.5493, 31.4548, 127.4524),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-341.72, 6098.49, 31.32, 11.05)
    },
    ['ammunation5'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(247.4033, -51.5980, 69.9412, 338.9074),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(249.0, -50.64, 69.94, 60.71)
    },
    ['ammunation6'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(17.9252, -1107.8459, 29.7972, 159.8394),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-5.82, -1107.48, 29.0, 164.32)
    },
    ['ammunation7'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(2564.7644, 298.4431, 108.7350, 267.7348),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(2578.77, 285.53, 108.61, 277.2)
    },
    ['ammunation8'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(-1112.7075, 2697.5435, 18.5543, 131.3508),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1127.67, 2708.18, 18.8, 41.76)
    },
    ['ammunation9'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(841.0942, -1029.1661, 28.1949, 270.1653),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(847.83, -1020.36, 27.88, 88.29)
    },
    ['ammunation10'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(-1310.3296, -394.4080, 36.6958, 336.3945),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1302.44, -385.23, 36.62, 303.79)
    },
    ['ammunation11'] = {
        ['label'] = '武器店',
        ['type'] = 'weapon',
        ['coords'] = vector4(-3167.4111, 1087.1079, 20.8387, 159.3843),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Open Ammunation',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.6,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-3183.6, 1084.35, 20.84, 68.13)
    },

    -- Casino Locations
    -- ['casino'] = {
    --     ['label'] = 'Diamond Casino',
    --     ['coords'] = vector4(990.6709, 30.6601, 71.4660, 55.6836),
    --     ['ped'] = 'csb_tomcasino',
    --     ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
    --     ['radius'] = 2,
    --     ['targetIcon'] = 'fas fa-coins',
    --     ['targetLabel'] = 'Buy Chips',
    --     ['products'] = Config.Products['casino'],
    --     ['showblip'] = false,
    --     ['blipsprite'] = 617,
    --     ['blipscale'] = 0.8,
    --     ['blipcolor'] = 0,
    --     ['delivery'] = vector4(972.6, 9.22, 81.04, 233.38)
    -- },

    -- ['casinobar'] = {
    --     ['label'] = 'Casino Bar',
    --     ['coords'] = vector4(968.0639, 29.3982, 71.4610, 315.6624),
    --     ['ped'] = 'a_m_y_smartcaspat_01',
    --     ['scenario'] = 'WORLD_HUMAN_VALET',
    --     ['radius'] = 2,
    --     ['targetIcon'] = 'fas fa-wine-bottle',
    --     ['targetLabel'] = 'Open Casino Bar',
    --     ['products'] = Config.Products['liquor'],
    --     ['showblip'] = false,
    --     ['blipsprite'] = 52,
    --     ['blipscale'] = 0.8,
    --     ['blipcolor'] = 0,
    --     ['delivery'] = vector4(937.16, 1.0, 78.76, 152.4)
    -- },

    -- Weedshop Locations
    -- ['weedshop'] = {
    --     ['label'] = '大麻店',
    --     ['coords'] = vector4(-1168.26, -1573.2, 4.66, 105.24),
    --     ['ped'] = 'a_m_y_hippy_01',
    --     ['scenario'] = 'WORLD_HUMAN_AA_SMOKE',
    --     ['radius'] = 2,
    --     ['targetIcon'] = 'fas fa-cannabis',
    --     ['targetLabel'] = 'Open Weed Shop',
    --     ['products'] = Config.Products['weedshop'],
    --     ['showblip'] = true,
    --     ['blipsprite'] = 140,
    --     ['blipscale'] = 0.8,
    --     ['blipcolor'] = 0,
    --     ['delivery'] = vector4(-1162.13, -1568.57, 4.39, 328.52)
    -- },

    -- Sea Word Locations
    ['seaword'] = {
        ['label'] = '水世界（游泳裝備店）',
        ['coords'] = vector4(-1687.03, -1072.18, 13.15, 52.93),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_IMPATIENT',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-fish',
        ['targetLabel'] = 'Sea Word',
        ['products'] = Config.Products['gearshop'],
        ['showblip'] = true,
        ['blipsprite'] = 729,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 18,
        ['delivery'] = vector4(-1674.18, -1073.7, 13.15, 333.56)
    },

    -- Leisure Shop Locations
    ['leisureshop'] = {
        ['label'] = '特殊裝備販賣店',
        ['coords'] = vector4(-1505.91, 1511.95, 115.29, 257.13),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 2,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Open Leisure Shop',
        ['products'] = Config.Products['leisureshop'],
        ['showblip'] = true,
        ['blipsprite'] = 102,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 30,
        ['delivery'] = vector4(-1507.64, 1505.52, 115.29, 262.2)
    },
}
