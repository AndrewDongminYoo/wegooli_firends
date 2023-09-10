// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for OperatorPageControllerApi
void main() {
  final api = WegooliFriends().getOperatorPageControllerApi();

  group(OperatorPageControllerApi, () {
    //Future<List<OperatorCarModel>> selectOperatorCarList(OperatorCarRequest request) async
    test('test selectOperatorCarList', () async {
      // TODO
    });

    //Future<List<OperatorTeamModel>> selectOperatorTeamList(OperatorTeamRequest request) async
    test('test selectOperatorTeamList', () async {
      // TODO
    });

    //Future<List<OperatorUserModel>> selectOperatorUserList(OperatorUserRequest request) async
    test('test selectOperatorUserList', () async {
      // TODO
    });

    //Future<OperatorTeamDetail> teamDetail(int teamSeq) async
    test('test teamDetail', () async {
      // TODO
    });
  });
}
