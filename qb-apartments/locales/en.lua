local Translations = {

    error = {
        to_far_from_door = '您離門鈴太遠了',
        nobody_home = '家裡沒人..',
        nobody_at_door = '門口沒人...'
    },
    success = {
        receive_apart = '您獲得了一間公寓',
        changed_apart = '您換了公寓',
    },
    info = {
        at_the_door = '有人在門口！',
    },
    text = {
        options = '[E] 公寓選項',
        enter = '進入公寓',
        ring_doorbell = '按門鈴',
        logout = '登出角色',
        change_outfit = '換衣服',
        open_stash = '打開儲物箱',
        move_here = '搬至此處',
        open_door = '打開門',
        leave = '離開公寓',
        close_menu = '⬅ 關閉菜單',
        tennants = '房客',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})