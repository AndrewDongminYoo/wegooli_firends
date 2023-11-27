// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_connect.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

// 🌎 Project imports:
import '/data/api/account_agreement_controller_api.dart';
import '/data/api/car_management_controller_api.dart';
import '/data/api/device_controller_api.dart';
import '/data/api/license_controller_api.dart';
import '/data/api/payment_card_controller_api.dart';
import '/data/api/schedule_controller_api.dart';
import '/data/api/subscription_controller_api.dart';
import '/data/api/team_account_connection_controller_api.dart';
import '/data/api/team_controller_api.dart';
import '/data/api/terminal_controller_api.dart';
import '/data/api/user_controller_api.dart';
import '/data/auth/bearer_auth.dart';

final baseURL = dotenv.get('BASE_URL');
WegooliFriends wegooli = WegooliFriends.instance;

class WegooliFriends extends GetHttpClient {
  /// 적절한 기본 URL, 타임아웃, 인증 인터셉터로 [Dio] 인스턴스를 준비하는 것입니다.
  /// 이렇게 구성된 [Dio]는 [WegooliFriends]에서 앱에 대한 네트워크 호출을 수행하는 데 사용됩니다.
  /// 인터셉터를 통해 각 요청에 대한 토큰 및 API 키와 같은 인증 세부 정보를 설정할 수 있습니다.
  WegooliFriends({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? baseURL,
              connectTimeout: 5000.milliseconds,
              receiveTimeout: 5000.milliseconds,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        BearerAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  // ignore: prefer_constructors_over_static_methods
  static WegooliFriends get instance => Get.isRegistered<WegooliFriends>()
      ? Get.find<WegooliFriends>()
      : Get.put(WegooliFriends());

  @override
  String get baseUrl => baseURL;
  final Dio dio;

  /// Get [AccountAgreementControllerApi] 인스턴스.
  AccountAgreementControllerApi get accountAgreementApi =>
      AccountAgreementControllerApi(dio);

  /// Get [CarManagementControllerApi] 인스턴스.
  CarManagementControllerApi get carManagementApi =>
      CarManagementControllerApi(dio);

  /// Get [DeviceControllerApi] 인스턴스.
  DeviceControllerApi get deviceApi => DeviceControllerApi(dio);

  /// Get [LicenseControllerApi] 인스턴스.
  LicenseControllerApi get licenseApi => LicenseControllerApi(dio);

  /// Get [PaymentCardControllerApi] 인스턴스.
  PaymentCardControllerApi get paymentCardApi => PaymentCardControllerApi(dio);

  /// Get [ScheduleControllerApi] 인스턴스.
  ScheduleControllerApi get scheduleApi => ScheduleControllerApi(dio);

  /// Get [SubscriptionControllerApi] 인스턴스.
  SubscriptionControllerApi get subscriptionApi =>
      SubscriptionControllerApi(dio);

  /// Get [TeamAccountConnectionControllerApi] 인스턴스.
  TeamAccountConnectionControllerApi get teamAccountConnectionApi =>
      TeamAccountConnectionControllerApi(dio);

  /// Get [TeamControllerApi] 인스턴스.
  TeamControllerApi get teamApi => TeamControllerApi(dio);

  /// Get [TerminalControllerApi] 인스턴스.
  TerminalControllerApi get terminalApi => TerminalControllerApi(dio);

  /// Get [UserControllerApi] 인스턴스.
  UserControllerApi get userApi => UserControllerApi(dio);
}
