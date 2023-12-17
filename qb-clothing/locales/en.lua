local Translations = {
    store = {
        barber = "理髮店",
        surgeon = "整形外科醫生",
        clothing = "服裝店",
        outfitchanger = "服裝變更選單"
    },

    outfits = {
        roomOutfits = "預設",
        myOutfits = "我的服裝",
        character = "服裝",
        accessoires = "配飾"
    },

    menu = {
        hair = "髮型",
        character = "服裝",
        accessoires = "配飾",
        features = "功能"
    },

    ui = {
        select = "選擇",
        delete = "刪除",
        select_outfit = "選擇服裝",
        player_model = "玩家模型",
        model = "模型",
        mother = "母親",
        father = "父親",
        texture = "類別",
        type = "類型",
        item = "款式",
        skin_color = "膚色",
        parent_mixer = "父母混合器",
        shape_mix = "形狀混合",
        skin_mix = "膚色混合",
        arms = "手臂",
        undershirt = "內衣/皮帶",
        color = "顏色",
        jacket = "夾克/上衣",
        vests = "背心",
        decals = "貼紙",
        acessory = "頸飾",
        bags = "包包",
        pants = "褲子",
        shoes = "鞋子",
        eye_color = "眼睛顏色",
        moles = "痣/雀斑",
        opacity = "透明度",
        nose_width = "鼻寬",
        width = "寬度",
        nose_peak_height = "鼻峰高度",
        height = "高度",
        nose_peak_length = "鼻峰長度",
        length = "長度",
        nose_bone_height = "鼻骨高度",
        nose_peak_lowering = "鼻峰降低",
        lowering = "降低",
        nose_bone_twist = "鼻骨扭轉",
        twist = "扭轉",
        eyebrow_height = "眉毛高度",
        eyebrow_depth = "眉毛深度",
        depth = "深度",
        cheeks_height = "臉頰高度",
        cheeks_width = "臉頰寬度",
        cheeks_depth = "臉頰深度",
        eyes_opening = "眼睛開度",
        opening = "開度",
        lips_thickness = "嘴唇厚度",
        thickness = "厚度",
        jaw_bone_width = "下顎骨寬度",
        jaw_bone_length = "下顎骨長度",
        chin_height = "下巴骨高度",
        chin_width = "下巴骨寬度",
        butt_chin  ="凹陷下巴",
        size = "尺寸",
        neck_thickness = "頸部厚度",
        ageing = "老化",
        hair = "髮型",
        eyebrow = "眉毛",
        facial_hair = "面部鬍鬚",
        lipstick = "口紅",
        blush = "腮紅",
        makeup = "化妝",
        mask = "口罩",
        hat = "帽子",
        glasses = "眼鏡",
        ear_accessories = "耳飾",
        watch = "手錶",
        bracelet = "手鐲",
        btn_confirm = "確認",
        btn_cancel = "取消",
        btn_saveOutfit = "保存服裝",
        outfit_name = "服裝名稱"
    },

    notify = {
        error_bracelet = "你不能移除你的腳踝手環...",
        info_deleteOutfit = "你已刪除你的 %{outfit} 服裝！"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})