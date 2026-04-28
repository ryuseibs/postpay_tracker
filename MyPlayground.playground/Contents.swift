import UserNotifications

// 通知の中身を用意する
let content = UNMutableNotificationContent()

// 通知タイトル・通知内容
content.title = "テスト通知"
content.body = "これは通知テストです。"

// 通知アクションのカテゴリ登録
content.categoryIdentifier = "MY_REPLY_CATEGORY"

// 確認
print(content.title)

// 指定時間後に実行
let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

// 上記をセットにして、リクエストにする
let request = UNNotificationRequest(
    //通知の固有IDを作成
    identifier: "UUID_01",
    content: content,
    trigger: trigger
)

print("リクエストが完了した: \(request.identifier)")
