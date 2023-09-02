// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class VehicleController extends GetxController {
  final wegooli = WegooliFriends.client;
  static VehicleController get to => Get.isRegistered<VehicleController>()
      ? Get.find<VehicleController>()
      : Get.put(VehicleController());
  final String token = PrefUtils.storage.getData('token');

  @override
  void onInit() async {
    final terminalApi = wegooli.getTerminalControllerApi();
    final terminal = await terminalApi.selectTerminal(seq: 2); // FIXME: hard-coded 2.
    print('terminal.data : ${terminal.data}');
    terminalDevice = terminal.data ?? TerminalModel();
    final scheduleApi = wegooli.getScheduleControllerApi();
    final scheduleList = await scheduleApi.selectScheduleList(
        teamSeq: (ScheduleRequestBuilder()..teamSeq = 2).build().teamSeq); // FIXME: hard-coded 2.
    print('scheduleList.data : ${scheduleList.data}');
    bool using = scheduleList.data!.any(compose);
    availableNow.value = using;
    print('done : $using');
    super.onInit();
  }

  void getClient(String? accountId) {
    final List<TeamAccountModel> members = UserController.to.members;
    final whoDriving =
        members.firstWhereOrNull((it) => it.accountId == accountId);
    print('Who is Driving? ${whoDriving}');
    driverName.text = whoDriving?.nickname ?? '';
  }

  bool compose(ScheduleModel schedule) {
    getClient(schedule.accountId);
    if (schedule.startAt == null || schedule.endAt == null) {
      return false;
    } else {
      DateTime _last = DateTime.parse(schedule.startAt!);
      DateTime _later = DateTime.parse(schedule.endAt!);
      DateTime _now = DateTime.now();
      return _now.isBetween(_last, _later);
    }
  }

  // Text Input Controllers
  TextEditingController driverName = TextEditingController();
  TextEditingController invitation = TextEditingController();

  // Domain Specific Model
  TerminalModel? _terminalDevice;
  TerminalModel get terminalDevice => _terminalDevice ?? TerminalModel();
  set terminalDevice(TerminalModel value) {
    _terminalDevice = value;
  }

  /// 현재 차량의 잔여 연료량
  String get fuel => terminalDevice.fuel ?? '0';
  /// 현재 차량의 연료 유형 (gasHybrid, gasoline,...)
  String get fuelType => terminalDevice.fuelType ?? '';
  /// 현재 차량의 잔여 연료 레벨 (0~10).
  int get level => int.parse(fuel) ~/ 10;

  ShareServiceModel? _sharingService;
  ShareServiceModel get sharingService {
    if (_sharingService == null) {
      return ShareServiceModel();
    } else {
      return _sharingService!;
    }
  }
  set sharingService(ShareServiceModel value) {
    _sharingService = value;
  }

  Rx<int>? _subMonthlyPrice;
  String get subMonthlyPrice {
    if (_sharingService != null) {
      _subMonthlyPrice!.update((val) {
        val = int.parse(_sharingService!.monthlyPay!);
      });
    }
    if (_subMonthlyPrice != null) {
      return _subMonthlyPrice!.value.toString();
    } else {
      return '';
    }
  }

  ServiceDetail? _serviceDetail;
  ServiceDetail? get serviceDetail => _serviceDetail;
  set serviceDetail(ServiceDetail? value) {
    _serviceDetail = value;
  }

  RxBool availableNow = false.obs;

  @override
  void onClose() {
    super.onClose();
    driverName.dispose();
    invitation.dispose();
  }

  Future<bool?> openDoor() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response = await deviceControllerApi.doorOpen(
        carNum: terminalDevice.carNum as String);
    print('response : ${response}');
    return response.data;
  }

  Future<bool?> closeDoor() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response = await deviceControllerApi.doorClose(
        carNum: terminalDevice.carNum as String);
    print('response : ${response}');
    return response.data;
  }

  Future<bool?> horn() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response = await deviceControllerApi.turnOnHorn(
        carNum: terminalDevice.carNum as String);
    print('response : ${response}');
    return response.data;
  }

  Future<bool?> emergencyLight() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response = await deviceControllerApi.turnOnEmergencyLight(
        carNum: terminalDevice.carNum as String);
    print('response : ${response}');
    return response.data;
  }
}
