// 📦 Package imports:
import 'package:get/get_connect/connect.dart' show GetConnect;

// 🌎 Project imports:
import '/lib.dart';

class TeamAccountService extends GetConnect {
  @override
  String get baseUrl => WegooliFriends.basePath;
  final api = wegooli.getTeamAccountConnectionControllerApi();

  Future<List<TeamAccountModel>> findMembers(String accountId) async {
    final response = await api.selectTeamAccountList(
        accountId: accountId, isLeaved: 'false');
    print('findMembers : $response');
    final teamList = response.data;
    if (teamList != null && teamList.isNotEmpty) {
      // NOTE: 현재는 Team이 1개만 존재한다고 가정하기 때문에 첫번째 Team 정보로만 연결한다.
      // teamList.first.account
      //     ?.forEach((it) => !members.contains(it) ? members.add(it) : null);
      final accountList = teamList.first.account;
      if (accountList != null && accountList.isNotEmpty) {
        return teamList.first.account!.toList();
      }
    }
    return [TeamAccountModel(accountId: accountId)];
  }

  Future<bool> inviteTeamAccount(String accountId, String inviteCode) async {
    final response =
        await api.inviteTeamAccount(accountId: accountId, code: inviteCode);
    return response.data == 'success';
  }
}
