// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:get/get_connect/connect.dart' show GetConnect;

// 🌎 Project imports:
import '/lib.dart';

class TeamService extends GetConnect {
  @override
  String get baseUrl => WegooliFriends.basePath;
  final api = wegooli.getTeamControllerApi();

  Future<TeamModel?> findTeamBySeqOrNull(int teamSeq) async {
    try {
      final response = await api.selectTeam(teamSeq: teamSeq);
      // print('findTeamBySeq : ${response.data}');
      return response.data!;
    } on DioException catch (e) {
      print('`findTeamBySeq()` 호출 중 DioException 발생: $e\n');
    } on Exception catch (e) {
      print('`findTeamBySeq()` 호출 중 Exception 발생: $e\n');
    }
    return null;
  }
}
