// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for TeamAccountConnectionControllerApi
void main() {
  final instance = WegooliFriends().getTeamAccountConnectionControllerApi();

  group(TeamAccountConnectionControllerApi, () {
    //Future<String> deleteTeamAccount(int seq) async
    test('test deleteTeamAccount', () async {
      // TODO
    });

    //Future<String> insertTeamAccount(TeamAccountConnectionRequest teamAccountConnectionRequest) async
    test('test insertTeamAccount', () async {
      // TODO
    });

    //Future<String> inviteTeamAccount(String accountId, String code) async
    test('test inviteTeamAccount', () async {
      // TODO
    });

    //Future<TeamAccountConnectionModel> selectTeamAccount(int seq) async
    test('test selectTeamAccount', () async {
      // TODO
    });

    //Future<BuiltList<TeamAccountConnectionResponse>> selectTeamAccountList({ int teamSeq, String accountId, String startJoinedAt, String endJoinedAt, String startLeavedAt, String endLeavedAt, String isLeaved }) async
    test('test selectTeamAccountList', () async {
      // TODO
    });

  });
}
