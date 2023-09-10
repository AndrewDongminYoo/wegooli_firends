// 📦 Package imports:
import 'package:get/get_connect/connect.dart' show GetConnect;

// 🌎 Project imports:
import '/lib.dart';

class CarManagementService extends GetConnect {
  final deviceApi = wegooli.getDeviceControllerApi();
  final statusApi = wegooli.getCarManagementControllerApi();
  final terminalApi = wegooli.getTerminalControllerApi();

  Future<CarManagementModel> selectCarManagement(int teamSeq) async {
    final response = await statusApi.selectCarManagement(seq: teamSeq);
    final carManagement = response.data;
    return carManagement ?? CarManagementModel();
  }

  Future<TerminalModel> retrieveInfo(int? teamSeq) async {
    if (teamSeq == null) {
      return TerminalModel();
    }
    final terminal = await terminalApi.selectTerminal(seq: teamSeq);
    return terminal.data ?? TerminalModel();
  }

  Future<bool> openDoor(String carNumber) async {
    final response = await deviceApi.doorOpen(carNum: carNumber);
    print('response : $response');
    return response.data ?? false;
  }

  Future<bool> closeDoor(String carNumber) async {
    final response = await deviceApi.doorClose(carNum: carNumber);
    print('response : $response');
    return response.data ?? false;
  }

  Future<bool> horn(String carNumber) async {
    final response = await deviceApi.turnOnHorn(carNum: carNumber);
    print('response : $response');
    return response.data ?? false;
  }

  Future<bool> emergencyLight(String carNumber) async {
    final response = await deviceApi.turnOnEmergencyLight(carNum: carNumber);
    print('response : $response');
    return response.data ?? false;
  }
}
