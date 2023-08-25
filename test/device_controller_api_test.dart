// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for DeviceControllerApi
void main() {
  final instance = WegooliFriends().getDeviceControllerApi();

  group(DeviceControllerApi, () {
    //Future<bool> doorClose(String carNum) async
    test('test doorClose', () async {
      // TODO
    });

    //Future<bool> doorOpen(String carNum) async
    test('test doorOpen', () async {
      // TODO
    });

    //Future<BuiltList<CarControlHistoryModel>> selectDeviceControlHistoryList(CarControlHistoryModel request) async
    test('test selectDeviceControlHistoryList', () async {
      // TODO
    });

    //Future<bool> turnOnEmergencyLight(String carNum) async
    test('test turnOnEmergencyLight', () async {
      // TODO
    });

    //Future<bool> turnOnHorn(String carNum) async
    test('test turnOnHorn', () async {
      // TODO
    });

  });
}
