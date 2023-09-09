# FirebaseMessaging Plugin

```dart
// ignore_for_file: require_trailing_commas
// Copyright 2020, the Chromium project authors.
// Please see the AUTHORS file for details.
// All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of firebase_messaging;

/// [FirebaseMessaging] 진입점입니다.
///
/// 새 인스턴스를 가져오려면 [FirebaseMessaging.instance]를 호출합니다.
class FirebaseMessaging extends FirebasePluginPlatform {
  // Cached and lazily loaded instance of [FirebaseMessagingPlatform] to avoid creating a [MethodChannelFirebaseMessaging] when not needed or creating an instance with the default app before a user specifies an app.
  FirebaseMessagingPlatform? _delegatePackingProperty;

  static Map<String, FirebaseMessaging> _firebaseMessagingInstances = {};

  FirebaseMessagingPlatform get _delegate {
    return _delegatePackingProperty ??= FirebaseMessagingPlatform.instanceFor(
        app: app, pluginConstants: pluginConstants);
  }

  /// 이 현재 [FirebaseMessaging] 인스턴스에 대한 [FirebaseApp].
  FirebaseApp app;

  FirebaseMessaging._({required this.app})
      : super(app.name, 'plugins.flutter.io/firebase_messaging');

  /// 기본 [FirebaseApp]을 사용하는 인스턴스를 반환합니다.
  static FirebaseMessaging get instance {
    FirebaseApp defaultAppInstance = Firebase.app();
    return FirebaseMessaging._instanceFor(app: defaultAppInstance);
  }

  ///  메시징은 아직 여러 개의 Firebase 앱을 지원하지 않습니다.
  ///  기본 앱만 지원합니다.
  /// 지정된 [FirebaseApp]을 사용하는 인스턴스를 반환합니다.
  factory FirebaseMessaging._instanceFor({required FirebaseApp app}) {
    return _firebaseMessagingInstances.putIfAbsent(app.name, () {
      return FirebaseMessaging._(app: app);
    });
  }

  /// Flutter 인스턴스가 포그라운드에 있는 동안 들어오는 FCM 페이로드가 수신될 때 호출되는 Stream을 반환합니다.
  ///
  /// Stream에는 [RemoteMessage]가 포함됩니다.
  ///
  /// 앱이 백그라운드에 있거나 종료된 상태에서 메시지를 처리하려면 [onBackgroundMessage]를 참조하십시오.
  static Stream<RemoteMessage> get onMessage =>
      FirebaseMessagingPlatform.onMessage.stream;

  /// 사용자가 FCM을 통해 표시된 alert 메시지를 눌렀을 때 호출되는 [Stream]을 반환합니다.
  ///
  /// 앱이 백그라운드 상태에서 열렸을 경우(종료되지 않은 경우) 스트림 이벤트가 전송됩니다.
  ///
  /// 앱이 종료된 상태에서 alert을 통해 앱이 열린 경우 [getInitialMessage]를 참조하십시오.
  static Stream<RemoteMessage> get onMessageOpenedApp =>
      FirebaseMessagingPlatform.onMessageOpenedApp.stream;

  /// 앱이 백그라운드에 있거나 종료될 때 호출되는 메시지 핸들러 함수를 설정합니다.
  ///
  /// 제공된 핸들러는 최상위 함수여야 하며 익명일 수 없습니다. 그렇지 않으면 [ArgumentError]가 throw됩니다.
  static void onBackgroundMessage(BackgroundMessageHandler handler) {
    FirebaseMessagingPlatform.onBackgroundMessage = handler;
  }

  /// 메시징 자동 초기화가 장치에 대해 활성화되었는지 또는 비활성화되었는지를 반환합니다.
  bool get isAutoInitEnabled {
    return _delegate.isAutoInitEnabled;
  }

  /// 애플리케이션이 종료된 상태에서 [alert]을 포함한 [RemoteMessage]를 통해 열렸을 경우 반환되며, 그렇지 않으면 'null'이 됩니다.
  ///
  /// [RemoteMessage]가 소비되면, [RemoteMessage]는 제거되고 [getInitialMessage]에 대한 추가 호출은 'null'이 됩니다.
  ///
  /// 이는 특정 alert 상호 작용이 특정 목적(예: 채팅 메시지, 특정 화면 열기 등)으로 앱을 열어야 하는지 여부를 결정하는 데 사용해야 합니다.
  Future<RemoteMessage?> getInitialMessage() {
    return _delegate.getInitialMessage();
  }

  /// 이전에 승인된 FCM 토큰에 대한 액세스를 제거합니다.
  ///
  /// 서버에서 이 토큰으로 보내는 메시지는 실패합니다.
  Future<void> deleteToken() {
    return _delegate.deleteToken();
  }

  /// iOS/MacOS에서는 사용자에게 APN 토큰을 받을 수 있습니다.
  ///
  /// FCM 서비스를 사용하지 않고 iOS/MacOS 디바이스로 메시지를 보내려면 이 토큰이 필요할 수 있습니다.
  ///
  /// 안드로이드 및 웹에서는 'null'을 반환합니다.
  Future<String?> getAPNSToken() {
    return _delegate.getAPNSToken();
  }

  /// 이 디바이스에 대한 기본 FCM 토큰을 반환합니다.
  ///
  /// 웹에서는 [vapidKey]가 필요합니다.
  Future<String?> getToken({
    String? vapidKey,
  }) {
    return _delegate.getToken(
      vapidKey: vapidKey,
    );
  }

  /// 새 FCM 토큰이 생성될 때 발생합니다.
  Stream<String> get onTokenRefresh {
    return _delegate.onTokenRefresh;
  }

  Future<bool> isSupported() {
    return _delegate.isSupported();
  }

  /// 현재 [NotificationSettings]을 반환합니다.
  ///
  /// 권한을 요청하려면 [requestPermission]을 호출합니다.
  Future<NotificationSettings> getNotificationSettings() {
    return _delegate.getNotificationSettings();
  }

  /// 사용자에게 alert 권한을 요청하는 메시지를 표시합니다.
  ///
  ///  - iOS에서는 사용자에게 권한을 요청하는 대화 상자가 표시됩니다.
  ///  - macOS에서는 권한을 부여할지 묻는 alert이 표시됩니다.
  ///  - Android에서는 [NotificationSettings] 클래스가 반환되며, [NotificationSettings] 클래스의
  ///    [authorizationStatus]의 값과 함께 반환됩니다.
  ///    시스템 설정에서 앱의 alert이 활성화되어 있는지 또는 차단되어 있는지를 나타냅니다.
  ///  - 웹에서는 네이티브 브라우저 API를 사용하여 사용자에게 권한을 요청하는 팝업이 표시됩니다.
  ///
  /// iOS에서는 [provisional]이 'true'로 설정되어 있으면 무음 alert 권한이 자동으로 부여됩니다.
  /// alert이 디바이스로 전달되면 사용자에게 alert을 비활성화하거나, 조용히 계속 수신하거나, 눈에 잘 띄는 alert을 활성화할 수 있는 옵션이 표시됩니다.
  Future<NotificationSettings> requestPermission({
    /// alert 표시 권한 요청.
    /// 기본값은 'true'입니다.
    /// iOS/macOS만 해당.
    bool alert = true,

    /// Siri가 AirPod를 통해 alert 메시지를 자동으로 읽을 수 있도록 권한을 요청합니다.
    /// 기본값은 'false'입니다.
    /// iOS만 해당.
    bool announcement = false,

    /// 애플리케이션 badge 업데이트 권한을 요청합니다.
    /// 기본값은 'true'입니다.
    /// iOS/macOS만 해당.
    bool badge = true,

    /// CarPlay 환경에서 alert을 표시할 수 있는 권한을 요청합니다.
    /// 기본값은 'false'입니다.
    /// iOS만 해당.
    bool carPlay = false,

    /// 중요 alert에 대한 권한을 요청합니다.
    /// 기본값은 'false'입니다.
    ///
    /// 참고: 앱 스토어 검토 과정에서 중요 alert을 활성화하는 이유를 애플리케이션에 명시적으로 설명해야 하며, 그렇지 않으면 앱이 거부될 수 있습니다.
    /// iOS에만 해당됩니다.
    bool criticalAlert = false,

    /// 중단되지 않는 alert을 임시로 생성할 수 있는 권한을 요청합니다.
    /// 기본값은 'false'입니다.
    /// iOS 전용.
    bool provisional = false,

    /// sound 재생 권한을 요청합니다.
    /// 기본값은 'true'입니다.
    /// iOS/macOS만 해당.
    bool sound = true,
  }) {
    return _delegate.requestPermission(
      alert: alert,
      announcement: announcement,
      badge: badge,
      carPlay: carPlay,
      criticalAlert: criticalAlert,
      provisional: provisional,
      sound: sound,
    );
  }

  /// 새 [RemoteMessage]를 FCM 서버로 보냅니다.
  /// 안드로이드만 해당.
  Future<void> sendMessage({
    String? to,
    Map<String, String>? data,
    String? collapseKey,
    String? messageId,
    String? messageType,
    int? ttl,
  }) {
    if (ttl != null) {
      assert(ttl >= 0);
    }
    return _delegate.sendMessage(
      to: to ?? '${app.options.messagingSenderId}@fcm.googleapis.com',
      data: data,
      collapseKey: collapseKey,
      messageId: messageId,
      messageType: messageType,
      ttl: ttl,
    );
  }

  /// Firebase 클라우드 메시징의 자동 초기화를 활성화 또는 비활성화합니다.
  Future<void> setAutoInitEnabled(bool enabled) async {
    return _delegate.setAutoInitEnabled(enabled);
  }

  /// Firebase Cloud Messaging 메시지 전송 메트릭 내보내기를 Android용 BigQuery로 활성화 또는 비활성화합니다.
  ///
  /// iOS에서는 [이 가이드](https://firebase.google.com/docs/cloud-messaging/understand-delivery?platform=ios#enable_delivery_data_export_for_background_notifications)를 따라 BigQuery로 메트릭을 내보내야 합니다.
  /// 웹에서는 [서비스 워커](https://firebase.google.com/docs/cloud-messaging/js/client)를 설정하고 'experimentalSetDeliveryMetricsExportedToBigQueryEnabled(메시징, true)'를 호출해야 합니다.
  Future<void> setDeliveryMetricsExportToBigQuery(bool enabled) async {
    return _delegate.setDeliveryMetricsExportToBigQuery(enabled);
  }

  /// 포그라운드에서 수신할 때 Apple alert의 표시 옵션을 설정합니다.
  ///
  /// 기본적으로 Apple 기기에서 alert 메시지는 애플리케이션이 백그라운드에 있거나 종료된 경우에만 표시됩니다.
  /// 이 메서드를 호출하면 이러한 옵션을 업데이트하여 애플리케이션이 포그라운드에 있는 동안 alert 표시 동작을 사용자 지정할 수 있습니다.
  ///
  /// 중요: 요청된 권한과 사용자가 설정한 권한이 이러한 설정보다 우선합니다.
  ///
  /// - [alert] alert 메시지를 포그라운드에 표시하고 현재 애플리케이션(헤드업 모드)을 오버레이하여
  ///   alert 메시지를 포그라운드에 표시합니다(헤드업 모드).
  /// - [badge] 애플리케이션이 포그라운드에 있는 경우 애플리케이션 badge 수가 업데이트됩니다.
  ///   업데이트됩니다.
  /// - [sound] 애플리케이션이 포 그라운드에 있으면 장치에서 sound를 트리거합니다.
  ///
  /// 모든 인수가 'false'이거나 생략된 경우 alert이 포그라운드에 표시되지 않지만 alert과 관련된 이벤트는 계속 수신됩니다.
  Future<void> setForegroundNotificationPresentationOptions({
    bool alert = false,
    bool badge = false,
    bool sound = false,
  }) {
    return _delegate.setForegroundNotificationPresentationOptions(
      alert: alert,
      badge: badge,
      sound: sound,
    );
  }

  /// 백그라운드에서 토픽을 구독합니다.
  ///
  /// [topic]은 다음 정규식과 일치해야 합니다: '[a-zA-Z0-9-_.~%]{1,900}'.
  Future<void> subscribeToTopic(String topic) {
    _assertTopicName(topic);
    return _delegate.subscribeToTopic(topic);
  }

  /// 백그라운드에서 토픽 구독을 취소합니다.
  Future<void> unsubscribeFromTopic(String topic) {
    _assertTopicName(topic);
    return _delegate.unsubscribeFromTopic(topic);
  }
}

void _assertTopicName(String topic) {
  bool isValidTopic = RegExp(r'^[a-zA-Z0-9-_.~%]{1,900}$').hasMatch(topic);
  assert(isValidTopic);
}
```
