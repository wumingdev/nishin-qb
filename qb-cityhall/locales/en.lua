local Translations = {
    error = {
        not_in_range = '離市政廳太遠',
        missing_license = '您證照被吊銷中'
    },
    success = {
        recived_license = '您已收到 %{value}  $50'
    },
    info = {
        new_job_app = '您的申請已發送給以下公司的老闆 (%{job})',
        bilp_text = '城市服務',
        city_services_menu = '~g~E~w~ - 城市服務選單',
        id_card = 'ID 卡',
        driver_license = '駕照',
        weaponlicense = '槍枝許可證',
        new_job = '恭喜你找到新工作！ (%{job})',
    },
    email = {
        jobAppSender = "%{job}",
        jobAppSub = "感謝您申請 %(job).",
        jobAppMsg = "Hello %{gender} %{lastname}<br /><br />%{job} 已收到您的申請.<br /><br />老闆正在觀看您的履歷，並將盡快與您聯繫進行面試。<br /><br />Once again, thank you for your application.",
        mr = '先生',
        mrs = '休假',
        sender = '區域',
        subject = '駕駛課程請求',
        message = 'Hello %{gender} %{lastname}<br /><br />我們剛剛收到一則訊息，有人想參加駕駛課程<br />如果您願意授課，請聯絡我們:<br />Name: <strong>%{firstname} %{lastname}</strong><br />Phone Number: <strong>%{phone}</strong><br/><br/>Kind regards,<br />Township Los Santos'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
