Config = {}

Config.UseTarget = GetConvar('UseTarget', 'true') == 'true'
Config.Locations = {
    -- [1] ={
    --     ['label'] = '警局拷問1',
    --     ['coords'] = vector3(486.9263, -996.7599, 26.1061)
    -- },
    -- [2] ={
    --     ['label'] = '警局拷問2',
    --     ['coords'] = vector3(486.8787, -988.9334, 26.1097)
    -- },
    -- [1] ={
    --     ['label'] = '警局局長',
    --     ['coords'] = vector3(463.0528, -984.1993, 30.5727)
    -- },
    -- [2] ={
    --     ['label'] = '警局大廳',
    --     ['coords'] = vector3(450.0253, -990.1066, 30.9545)
    -- },      
    -- [5] ={
    --     ['label'] = '醫護休息區',
    --     ['coords'] = vector3(309.8, -600.0, 43.1144)
    -- },
}
Config.PrintModels = {
    [1] = `prop_printer_01`,
    [2] = `prop_printer_02`,
    [3] = `v_res_printer`,
    [4] = `v_ret_gc_print`,
    [5] = `v_ind_dc_desk01`,
    [6] = `prop_keyboard_01a`,
    [7] = `prop_till_01`,
    [8] = `prop_till_02`,
}