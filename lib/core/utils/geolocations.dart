// 📦 Package imports:
import 'package:geolocator/geolocator.dart' show Geolocator, LocationAccuracy, LocationPermission, Position;

/// 기기의 현재 위치를 확인합니다.
///
/// 위치 서비스가 활성화되어 있지 않거나 권한이 거부된 경우 `Future.error`를 반환합니다.
Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  /// 위치 서비스가 활성화되어 있는지 테스트합니다.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    /// 위치 서비스가 활성화되지 않은 경우 위치 액세스를 계속하지 말고 앱 사용자에게 위치 서비스를 활성화하도록 요청하세요.
    return Future.error('위치 서비스가 비활성화됩니다.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      /// 권한이 거부되면 다음에 다시 권한을 요청할 수 있습니다(이 경우 Android의 'shouldShowRequestPermissionRationale'이 참을 반환합니다).
      /// 안드로이드 가이드라인에 따라 이제 앱에 설명 UI가 표시되어야 합니다.
      return Future.error('위치 권한이 거부되었습니다.');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    /// 권한은 영구적으로 거부되며 적절하게 처리됩니다.
    return Future.error(
      '위치 권한이 영구적으로 거부되어 권한을 요청할 수 없습니다.');
  }

  LocationAccuracy accuracy = LocationAccuracy.bestForNavigation;

  /// 여기에 도달하면(`whenInUse` 또는 `always`) 권한이 부여되고 디바이스 위치에 계속 액세스할 수 있습니다.
  /// 디바이스의 현재 위치를 조회하려면 `getCurrentPosition` 메서드를 호출하기만 하면 됩니다.
  /// 다음 파라미터를 지정하여 결과를 세밀하게 조정할 수 있습니다:
  /// - `desiredAccuracy`: 앱이 수신하고자 하는 위치 데이터의 정확도;
  /// - `timeLimit`: 현재 위치를 획득할 수 있는 최대 시간입니다.
  ///   시간 제한을 초과하면 [TimeOutException]이 발생하고 호출이 취소됩니다.
  ///   기본적으로 제한은 설정되어 있지 않습니다.
  return await Geolocator.getCurrentPosition(desiredAccuracy: accuracy);
}
