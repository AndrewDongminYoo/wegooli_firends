// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for TeamControllerApi
void main() {
  final instance = WegooliFriends().getTeamControllerApi();

  group(TeamControllerApi, () {
    //Future<String> deleteTeam(int teamSeq) async
    test('test deleteTeam', () async {
      // TODO
    });

    //Future<JsonObject> insertTeam(TeamRequest teamRequest) async
    test('test insertTeam', () async {
      // TODO
    });

    //Future<TeamModel> selectTeam(int teamSeq) async
    test('test selectTeam', () async {
      // TODO
    });

    //Future<TeamModel> selectTeamByTeamCode(String teamCode) async
    test('test selectTeamByTeamCode', () async {
      // TODO
    });

    //Future<BuiltList<TeamModel>> selectTeamList({ String accountId, String name, String delYn, String startCreatedAt, String endCreatedAt, String startUpdatedAt, String endUpdatedAt, String contract }) async
    test('test selectTeamList', () async {
      // TODO
    });

    //Future<String> updateTeam(int teamSeq, TeamRequest teamRequest) async
    test('test updateTeam', () async {
      // TODO
    });

  });
}
