// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/data/model/terminal_model_by_team.dart';
import '/data/services/vehicle.dart';

class SmartKeyController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static SmartKeyController get to => GetIt.I.isRegistered<SmartKeyController>()
      ? GetIt.I.get<SmartKeyController>()
      : GetIt.I.registerSingleton(SmartKeyController());

  final _manager = CarManagementService();
  final vehicle = ValueNotifier<TerminalModelByTeam?>(null);

  Future<bool?> openDoor() async {
    if (vehicle.value != null) {
      return _manager.openDoor(vehicle.value!.carNum!);
    } else {
      return false;
    }
  }

  Future<bool?> closeDoor() async {
    if (vehicle.value != null) {
      return _manager.closeDoor(vehicle.value!.carNum!);
    } else {
      return false;
    }
  }

  Future<bool?> horn() async {
    if (vehicle.value != null) {
      return _manager.horn(vehicle.value!.carNum!);
    } else {
      return false;
    }
  }

  Future<bool?> emergencyLight() async {
    if (vehicle.value != null) {
      return _manager.emergencyLight(vehicle.value!.carNum!);
    } else {
      return false;
    }
  }
}
