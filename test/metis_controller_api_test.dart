// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for MetisControllerApi
void main() {
  final instance = WegooliFriends().getMetisControllerApi();

  group(MetisControllerApi, () {
    //Future<CarHistoryDTO> carLogTop(String carNum) async
    test('test carLogTop', () async {
      // TODO
    });

    //Future<BuiltList<CarHistoryDTO>> history({ String carNum }) async
    test('test history', () async {
      // TODO
    });

    //Future<String> received() async
    test('test received', () async {
      // TODO
    });

    //Future<String> receiveTerminalResponse(DeviceControlResultDTO dto) async
    test('test receiveTerminalResponse', () async {
      // TODO
    });
  });
}