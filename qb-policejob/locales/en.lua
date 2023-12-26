local Translations = {
    error = {
        license_already = '玩家已擁有執照',
        error_license = '玩家沒有該執照',
        no_camera = '攝影機不存在',
        blood_not_cleared = '血跡未清除',
        bullet_casing_not_removed = '彈殼未移除',
        none_nearby = '附近沒有人！',
        canceled = '已取消..',
        time_higher = '時間必須大於0',
        amount_higher = '金額必須大於0',
        vehicle_cuff = '你不能在車輛中拷貝某人',
        no_cuff = '你身上沒有手銬',
        no_impound = '沒有被扣押的車輛',
        no_spikestripe = '不能再放置尖刺條',
        error_license_type = '無效的執照類型',
        rank_license = '你的職級不夠高以授予執照',
        revoked_license = '你的執照已被撤銷',
        rank_revoke = '你的職級不夠高以撤銷執照',
        on_duty_police_only = '僅供在職警察使用',
        vehicle_not_flag = '車輛未被標記',
        not_towdriver = '不是拖車司機',
        not_lawyer = '該人不是律師',
        no_anklet = '這個人沒有戴腳鐐。',
        have_evidence_bag = '你必須攜帶一個空的證據袋',
        no_driver_license = '沒有駕駛執照',
        not_cuffed_dead = '此人未被上銬或昏迷',
        fine_yourself = '你不能對自己開罰單',
        not_online = "這個人不在線"
    },
    success = {
        uncuffed = '你已經被解銬了',
        granted_license = '你已被授予執照',
        grant_license = '你授予了一個執照',
        revoke_license = '你已撤銷了一個執照',
        tow_paid = '你獲得了$500',
        blood_clear = '血跡清除完成',
        bullet_casing_removed = '彈殼已被移除...',
        anklet_taken_off = '你的腳踝追蹤器被取下了。',
        took_anklet_from = '你從%{firstname} %{lastname}身上取下了踝帶',
        put_anklet = '你戴上了一個踝帶。',
        put_anklet_on = '你給了%{firstname} %{lastname}戴上踝帶',
        vehicle_flagged = '車輛 %{plate} 已被標記為 %{reason}',
        impound_vehicle_removed = '車輛被從扣押中取出！',
        impounded = '車輛被扣押',
    },
    info = {
        mr = '先生',
        mrs = '女士',
        impound_price = '玩家支付以取回車輛的價格（可以為0）',
        plate_number = '車牌號碼',
        flag_reason = '標記車輛的原因',
        camera_id = '攝影機編號',
        callsign_name = '你的呼號名稱',
        poobject_object = '要生成的物體類型或“delete”以刪除',
        player_id = '玩家ID',
        citizen_id = '玩家的市民ID',
        dna_sample = 'DNA樣本',
        jail_time = '他們必須在監獄中的時間',
        jail_time_no = '監獄時間必須大於0',
        license_type = '執照類型（駕駛/武器）',
        ankle_location = '踝帶位置',
        cuff = '你被拷在手銬上了！',
        cuffed_walk = '你被拷在手銬上，但你可以走路',
        vehicle_flagged = '車輛 %{vehicle} 被標記為：%{reason}',
        unflag_vehicle = '車輛 %{vehicle} 被取消標記',
        tow_driver_paid = '你支付了拖車司機',
        paid_lawyer = '你支付了一名律師',
        vehicle_taken_depot = '車輛被以%{price}的價格帶入倉庫',
        vehicle_seized = '車輛被扣押',
        stolen_money = '你偷了$%{stolen}',
        cash_robbed = '你被搶了$%{money}',
        driving_license_confiscated = '你的駕駛執照被沒收了',
        cash_confiscated = '你的現金被沒收了',
        being_searched = '你正在被搜索',
        cash_found = '在平民身上找到了$%{cash}',
        sent_jail_for = '你將該人送入監獄%{time}個月',
        fine_received = '你收到了$%{fine}的罰款',
        blip_text = '警察警報 - %{value}',
        jail_time_input = '監獄時間',
        submit = '提交',
        time_months = '月份',
        bill = '賬單',
        amount = '金額',
        police_plate = 'LSPD', --只能是4個字符長
        vehicle_info = '引擎：%{value} % | 燃料：%{value2} %',
        evidence_stash = '證據收藏 | %{value}',
        slot = '槽號（1,2,3）',
        current_evidence = '%{value} | 抽屜 %{value2}',
        on_duty = '[E] - 執勤',
        off_duty = '[E] - 下班',
        onoff_duty = '~g~執勤~/~r~下班',
        stash = '收藏 %{value}',
        delete_spike = '[~r~E~s~] 移除雞爪釘',
        close_camera = '關閉攝影機',
        bullet_casing = '[~g~G~s~] 彈殼 %{value}',
        casing = '彈殼',
        blood = '血跡',
        blood_text = '[~g~G~s~] 血 %{value}',
        fingerprint_text = '[G] 指紋',
        fingerprint = '指紋',
        store_heli = '[E] 存儲直升機',
        take_heli = '[E] 取直升機',
        impound_veh = '[E] - 扣押車輛',
        store_veh = '[E] - 存儲車輛',
        armory = '武器庫',
        enter_armory = '[E] 武器庫',
        finger_scan = '指紋掃描中',
        scan_fingerprint = '[E] 掃描指紋',
        trash = '垃圾',
        trash_enter = '[E] 垃圾箱',
        stash_enter = '[E] 進入儲物櫃',
        target_location = '標記 %{firstname} %{lastname} 的位置在你的地圖上',
        anklet_location = '踝帶位置',
        new_call = '新呼叫',
        officer_down = '警官 %{lastname} | %{callsign} 受傷',
        ems_down = '醫護 %{lastname} | %{callsign} 受傷',
        fine_issued = '已成功發出罰單',
        received_fine = '國家債務恢復已自動恢復所欠款項...'
    },
    evidence = {
        red_hands = '紅手掌',
        wide_pupils = '瞳孔擴張',
        red_eyes = '紅眼睛',
        weed_smell = '嗅起來像大麻',
        gunpowder = '衣物上有火藥味',
        chemicals = '嗅到化學物質',
        heavy_breathing = '呼吸急促',
        sweat = '大量流汗',
        handbleed = '手上有血跡',
        confused = '困惑',
        alcohol = '嗅起來像酒精',
        heavy_alcohol = '嗅起來像酒精味很濃',
        agitated = '焦躁 - 顯示使用甲基苯丙胺的跡象',
        serial_not_visible = '序號不可見...',
    },
    menu = {
        garage_title = '警察車輛',
        close = '⬅ 關閉菜單',
        impound = '扣押車輛',
        pol_impound = '警察扣押',
        pol_garage = '警察車庫',
        pol_armory = '警察武器庫',
    },
    email = {
        sender = '中央司法收款機構',
        subject = '債務追債',
        message = '親愛的%{value}。%{value2}，<br /><br />中央司法收款機構（CJCA）已經收取了您從警察那裡收到的罰款。<br />您的帳戶中已扣除<strong>$%{value3}</strong>。<br /><br />此致敬意，<br />Mr. I.K. Graai',
    },
    commands = {
        place_spike = '放置刺帶（僅限警察）',
        license_grant = '授予某人許可證',
        license_revoke = '撤銷某人的許可證',
        place_object = '放置/刪除物體（僅限警察）',
        cuff_player = '擒拿玩家（僅限警察）',
        escort = '護送玩家',
        callsign = '給自己一個呼號',
        clear_casign = '清除彈殼區域（僅限警察）',
        jail_player = '監禁玩家（僅限警察）',
        unjail_player = '解除監禁玩家（僅限警察）',
        clearblood = '清除血跡區域（僅限警察）',
        seizecash = '沒收現金（僅限警察）',
        softcuff = '輕柔擒拿（僅限警察）',
        camera = '查看安全攝像機（僅限警察）',
        flagplate = '標記車牌（僅限警察）',
        unflagplate = '取消標記車牌（僅限警察）',
        plateinfo = '查詢車牌（僅限警察）',
        depot = '附帶價格的扣押（僅限警察）',
        impound = '扣押車輛（僅限警察）',
        paytow = '支付拖車司機（僅限警察）',
        paylawyer = '支付律師（僅限警察、法官）',
        anklet = '附帶追蹤腳鐐（僅限警察）',
        ankletlocation = '獲取人的腳鐐位置',
        removeanklet = '移除追蹤腳鐐（僅限警察）',
        drivinglicense = '扣押駕照（僅限警察）',
        takedna = '從人身上採集DNA樣本（需要空的證據袋）（僅限警察）',
        police_report = '警察報告',
        message_sent = '要發送的消息',
        civilian_call = '市民通報',
        emergency_call = '新的911通報',
        fine = '對某人罰款'
    },

    progressbar = {
        blood_clear = '清除血跡中...',
        bullet_casing = '移除彈殼中...',
        robbing = '搶劫中...',
        place_object = '放置物體中...',
        remove_object = '移除物體中...',
        impound = '扣押車輛中...',
    },    

    info = {
        mr = '先生',
        mrs = '夫人',
        impound_price = '玩家支付的取車價格（可以為0）',
        plate_number = '車牌號碼',
        flag_reason = '車輛被標記的原因',
        camera_id = '攝像頭ID',
        callsign_name = '您的呼號名稱',
        poobject_object = '要生成的物體類型或\'delete\'以刪除',
        player_id = '玩家ID',
        citizen_id = '玩家公民ID',
        dna_sample = 'DNA樣本',
        jail_time = '他們必須在監獄中度過的時間',
        jail_time_no = '監獄時間必須大於0',
        license_type = '許可證類型（駕駛/武器）',
        ankle_location = '腳踝追蹤器位置',
        cuff = '您被上手銬了！',
        cuffed_walk = '您被上手銬了，但可以行走',
        vehicle_flagged = '車輛 %{vehicle} 被標記為：%{reason}',
        unflag_vehicle = '車輛 %{vehicle} 被取消標記',
        tow_driver_paid = '您支付了拖車司機',
        paid_lawyer = '您支付了一名律師',
        vehicle_taken_depot = '車輛被帶入倉庫，費用為 $%{price}',
        vehicle_seized = '車輛被扣押',
        stolen_money = '您偷了 $%{stolen}',
        cash_robbed = '您被搶劫了 $%{money}',
        driving_license_confiscated = '您的駕駛許可證已被沒收',
        cash_confiscated = '您的現金被沒收',
        being_searched = '您正在被檢查',
        cash_found = '在平民身上找到了 $%{cash}',
        sent_jail_for = '您將此人送入監獄，服刑 %{time} 個月',
        fine_received = '您收到了 $%{fine} 的罰款',
        blip_text = '警察警報 - %{value}',
        jail_time_input = '監獄時間',
        submit = '提交',
        time_months = '月數',
        bill = '帳單',
        amount = '金額',
        police_plate = 'LSPD', --僅應為4個字符長
        vehicle_info = '引擎：%{value} % | 燃料：%{value2} %',
        evidence_stash = '證據存儲 | %{value}',
        slot = '插槽號（1、2、3）',
        current_evidence = '%{value} | 抽屜 %{value2}',
        on_duty = '[E] - 執勤',
        off_duty = '[E] - 下班',
        onoff_duty = '~g~上~s~/~r~下~s~ 勤',
        stash = '存儲 %{value}',
        delete_spike = '[~r~E~s~] 刪除雞爪釘',
        close_camera = '關閉攝像頭',
        bullet_casing = '[~g~G~s~] 彈殼 %{value}',
        casing = '彈殼',
        blood = '血跡',
        blood_text = '[~g~G~s~] 血跡 %{value}',
        fingerprint_text = '[G] 指紋',
        fingerprint = '指紋',
        store_heli = '[E] 存儲直升機',
        take_heli = '[E] 駕駛直升機',
        impound_veh = '[E] - 扣押車輛',
        store_veh = '[E] - 存儲車輛',
        armory = '武器庫',
        enter_armory = '[E] 進入武器庫',
        finger_scan = '指紋掃描中',
        scan_fingerprint = '[E] 掃描指紋',
        trash = '垃圾',
        trash_enter = '[E] 垃圾桶',
        stash_enter = '[E] 進入儲物櫃',
        target_location = '您標記了 %{firstname} %{lastname} 的位置在您的地圖上',
        anklet_location = '腳鐐位置',
        new_call = '新呼叫',
        officer_down = '警察 %{lastname} | %{callsign} 需要支援',
        fine_issued = '已成功對違規者發出罰款',
        received_fine = '州債務回收自動收回了欠款的罰款...'
    },    
    evidence = {
        red_hands = '雙手發紅',
        wide_pupils = '瞳孔擴張',
        red_eyes = '眼睛發紅',
        weed_smell = '身上有麻味',
        gunpowder = '身上有煙硝味',
        chemicals = '聞起來像化學物',
        heavy_breathing = '呼吸急促',
        sweat = '大量出汗',
        handbleed = '手上有血跡',
        confused = '困惑不解',
        alcohol = '身上有酒精味道',
        heavy_alcohol = '酒精味濃烈',
        agitated = '焦慮 - 顯示使用甲基安非他命的跡象',
        serial_not_visible = '序號不可見...',
    },    
    menu = {
        garage_title = '警用車輛',
        close = '⬅ 關閉菜單',
        impound = '被扣押的車輛',
        pol_impound = '警察扣押',
        pol_garage = '警察車庫',
        pol_armory = '警察槍庫',
    },
    email = {
        sender = '中央司法收債機構',
        subject = '債務收集',
        message = '親愛的 %{value}. %{value2}，<br /><br />中央司法收債機構（CJCA）已經扣除了您從警察那裡收到的罰款。<br />您的帳戶中扣除了<strong>$%{value3}</strong>。<br /><br />此致敬意，<br />Mr. I.K. Graai',
    },
    commands = {
        place_spike = '放置刺帶（僅限警察）',
        license_grant = '向某人授予許可證',
        license_revoke = '撤銷某人的許可證',
        place_object = '放置/刪除物體（僅限警察）',
        cuff_player = '上手銬（僅限警察）',
        escort = '護送玩家',
        callsign = '分配自己的呼號',
        clear_casign = '清除彈殼區域（僅限警察）',
        jail_player = '監禁玩家（僅限警察）',
        unjail_player = '釋放監禁玩家（僅限警察）',
        clearblood = '清除血跡區域（僅限警察）',
        seizecash = '扣押現金（僅限警察）',
        softcuff = '輕柔上手銬（僅限警察）',
        camera = '查看安全攝像頭（僅限警察）',
        flagplate = '標記車牌號碼（僅限警察）',
        unflagplate = '取消標記車牌號碼（僅限警察）',
        plateinfo = '查詢車牌號碼（僅限警察）',
        depot = '帶價格扣押（僅限警察）',
        impound = '扣押車輛（僅限警察）',
        paytow = '支付拖車司機費用（僅限警察）',
        paylawyer = '支付律師費（僅限警察、法官）',
        anklet = '安裝追蹤腳鐐（僅限警察）',
        ankletlocation = '獲取某人腳鐐的位置',
        removeanklet = '移除追蹤腳鐐（僅限警察）',
        drivinglicense = '扣押駕照（僅限警察）',
        takedna = '從某人身上採集DNA樣本（需要空的證據袋）（僅限警察）',
        police_report = '警察報告',
        message_sent = '要發送的消息',
        civilian_call = '市民通話',
        emergency_call = '新的 911 通話',
        fine = '對某人開出罰單'
    },
    progressbar = {
        blood_clear = '清理血跡中...',
        bullet_casing = '移除彈殼中...',
        robbing = '搶劫中...',
        place_object = '放置物體中...',
        remove_object = '移除物體中...',
        impound = '扣押車輛中...',
    },    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
