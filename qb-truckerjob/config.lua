Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.TruckerJobTruckDeposit = 125
Config.TruckerJobFixedLocation = false
Config.TruckerJobMaxDrops = 20 -- amount of locations before being forced to return to station to reload
Config.TruckerJobDropPrice = 500
Config.TruckerJobBonus = 0 -- this is a percentage to calculate bonus over 5 deliveries.
Config.TruckerJobPaymentTax = 15

Config.TruckerJobLocations = {
    ["main"] = {
        label = "貨車棚",
        coords = vector4(153.68, -3211.88, 5.91, 274.5),
    },
    ["vehicle"] = {
        label = "存放貨車點",
        coords = vector4(141.12, -3204.31, 5.85, 267.5),
    },
}

Config.TruckerJobVehicles = {
    ["rumpo"] = {
        ["label"] = "貨運廂型車",
        ["cargodoors"] = {
            [0] = 2,
            [1] = 3
        },
        ["trunkpos"] = 1.5
    },
    ["benson"] = {
        ["label"] = "輕型卡車",
        ["jobrep"] = 0,
        ["cargodoors"] = {
            [0] = 5
        },
        ["trunkpos"] = 3
    },
    ["mule5"] = {
        ["label"] = "中型卡車",
        ["jobrep"] = 0,
        ["cargodoors"] = {
            [0] = 2,
            [1] = 3
        },
        ["trunkpos"] = 1.5
    },
    -- ["pounder"] = {
    --     ["label"] = "Pounder Box Truck",
    --     ["jobrep"] = 0,
    --     ["cargodoors"] = {
    --         [0] = 2,
    --         [1] = 3
    --     },
    --     ["trunkpos"] = 7
    -- },
    ["boxville4"] = {
        ["label"] = "箱式貨車",
        ["jobrep"] = 0,
        ["cargodoors"] = {
            [0] = 2,
            [1] = 3
        },
        ["trunkpos"] = 1.5
    },
}