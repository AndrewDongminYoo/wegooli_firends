// 📦 Package imports:
import 'package:get/get_connect.dart';

// 🌎 Project imports:
import '/data/client/api_client.dart';
import '/data/model/terminal_model_by_team.dart';

class CarManagementService extends GetConnect {
  @override
  GetHttpClient get httpClient => ApiClient();

  final int? teamSeq = null;

  Future<TerminalModelByTeam> retrieveInfo(int teamSeq) async {
    final terminal = await get('/terminal/team/{seq}')
        .then((value) => value as Response<TerminalModelByTeam>);
    return terminal.body ?? const TerminalModelByTeam();
  }

  Future<bool> openDoor(String carNumber) async {
    final response = await put('/control/door/open', carNumber)
        .then((value) => value as Response<bool>);
    return response.body ?? false;
  }

  Future<bool> closeDoor(String carNumber) async {
    final response = await put('/control/door/close', carNumber)
        .then((value) => value as Response<bool>);
    return response.body ?? false;
  }

  Future<bool> horn(String carNumber) async {
    final response = await put('/control/horn', carNumber)
        .then((value) => value as Response<bool>);
    return response.body ?? false;
  }

  Future<bool> emergencyLight(String carNumber) async {
    final response = await put('/control/light', carNumber)
        .then((value) => value as Response<bool>);
    return response.body ?? false;
  }
}
