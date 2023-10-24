// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

// For checking internet connectivity
abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

/// 네트워크 연결 구성: Wi-Fi와 셀룰러를 구분하고, Wi-Fi 상태를 확인하는 등의 작업을 수행할 수 있습니다.
class NetworkInfo implements NetworkInfoI {
  NetworkInfo(this.connectivity) {
    connectivity = connectivity;
  }
  Connectivity connectivity;

  /// 장치의 연결 상태를 확인합니다.
  /// 이 기능의 결과를 사용하여 네트워크 요청을 안정적으로 수행할 수 있는지 여부를 결정하지 마세요. 이 함수는 무선 상태만 제공합니다.
  /// 대신 [onConnectivityChanged] 스트림을 통해 연결 변경 사항을 수신하세요.
  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  /// 연결 상태 확인 결과.
  /// [bluetooth]: 블루투스로 연결된 디바이스
  /// [wifi]: Wi-Fi를 통해 연결된 디바이스
  /// [ethernet]: 이더넷 네트워크에 연결된 장치
  /// [mobile]: 셀룰러 네트워크에 연결된 장치
  /// [none]: 네트워크에 연결되지 않은 장치
  /// [none]: VPN에 연결된 장치
  /// iOS 및 macOS 참고:
  ///   [VPN]에 대한 별도의 네트워크 인터페이스 유형이 없습니다.
  ///   모든 애플 디바이스에서 [other]를 반환합니다(시뮬레이터도 마찬가지).
  ///   [other]: 장치가 알 수 없는 네트워크에 연결됨
  @override
  Future<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  /// 연결 상태가 변경될 때마다 발생합니다.
  /// iOS에서는 WiFi 상태가 변경될 때 연결 상태가 업데이트되지 않을 수 있으며, 이는 시뮬레이터에만 영향을 미치는 알려진 문제입니다.
  /// 자세한 내용은 https://github.com/fluttercommunity/plus_plugins/issues/479 을 참조하세요.
  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
