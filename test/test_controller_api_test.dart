// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for TestControllerApi
void main() {
  final api = WegooliFriends().getTestControllerApi();

  group(TestControllerApi, () {
    //Future<JsonObject> callTest(TestModel model) async
    test('test callTest', () async {
      // TODO
    });
  });
}
