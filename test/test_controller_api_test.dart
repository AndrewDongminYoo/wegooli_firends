// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for TestControllerApi
void main() {
  final instance = WegooliFriends().getTestControllerApi();

  group(TestControllerApi, () {
    //Future<JsonObject> callTest(TestModel model) async
    test('test callTest', () async {
      // TODO
    });

  });
}
