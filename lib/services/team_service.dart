// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class TeamService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.teamApi;

  Future<TeamModel?> findTeamBySeqOrNull(int teamSeq) async {
    try {
      final response = await api.selectTeam(teamSeq: teamSeq);
      // print('findTeamBySeq : ${response.data}');
      return response.data!;
    } on Exception catch (e) {
      handleException('findTeamBySeqOrNull', e);
    }
    return null;
  }
}
