// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class TeamAccountService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.teamAccountConnectionApi;

  Future<List<TeamAccountConnectionResponse>> findTeams(
      String accountId) async {
    try {
      final response = await api.selectTeamAccountList(
          accountId: accountId, isLeaved: 'false');
      // print('findTeams : ${response.data}');
      return response.data!;
    } on Exception catch (e) {
      handleException('findTeams', e);
      print('`findTeams()` 호출 중 Exception 발생: $e\n');
    }
    return List.empty();
  }

  Future<TeamAccountConnectionResponse?> findFirstTeamOrNull(
      String accountId) async {
    try {
      final teams = await findTeams(accountId);
      // print('findFirstTeamOrNull : ${teams.firstOrNull}');
      return teams.firstOrNull;
    } on Exception catch (e) {
      handleException('findFirstTeamOrNull', e);
    }
    return null;
  }

  Future<List<TeamAccountModel>> findMembers(String accountId) async {
    try {
      final teamOrNull = await findFirstTeamOrNull(accountId);
      // print('findMembers : ${teamOrNull?.account}');
      return teamOrNull == null
          ? List.empty()
          : teamOrNull.account ?? List.empty();
    } on Exception catch (e) {
      handleException('findMembers', e);
    }
    return List.empty();
  }

  Future<bool> inviteTeamAccount(String accountId, String inviteCode) async {
    final response =
        await api.inviteTeamAccount(accountId: accountId, code: inviteCode);
    return response.data == 'success';
  }
}
