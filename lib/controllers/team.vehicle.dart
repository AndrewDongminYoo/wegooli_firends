// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class VehicleController extends GetxController {
  final wegooli = WegooliFriends.client;
  static VehicleController get to => Get.isRegistered<VehicleController>()
      ? Get.find<VehicleController>()
      : Get.put(VehicleController());
  final String token = PrefUtils.storage.getToken();
  final userController = UserController.to;
  late Rx<SubscriptionModel> subscriptionModel = SubscriptionModel().obs;
  late Rx<CarManagementModel> carManagementModel = CarManagementModel().obs;
  late int? teamSeq = null;
  late UserDto currentUser = UserDto();
  @override
  void onInit() async {
    currentUser = userController.currentUser.value;
    teamSeq = userController.getTeamSeq();
    await retrieveInfo();
    await retrieveSchedule();
    await selectSubscriptionInfo();
    await retrieveManagement();
    super.onInit();
  }

  void getClient(String? accountId) {
    final List<TeamAccountModel> members = userController.members;
    final whoDriving =
        members.firstWhereOrNull((it) => it.accountId == accountId);
    print('team.vehicle.dart#L39 ${whoDriving} is Driving');
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
  TerminalModel get terminalDevice {
    if (_terminalDevice == null) {
      return TerminalModel();
    } else {
      return _terminalDevice!;
    }
  }

  set terminalDevice(TerminalModel value) {
    _terminalDevice = value;
  }

  /// 현재 차량의 잔여 연료량
  String get fuel => terminalDevice.fuel ?? '0';

  /// 현재 차량의 연료 유형 (gasHybrid, gasoline,...)
  String get fuelType {
    print('fuel type: ${terminalDevice.fuelType}');
    switch (terminalDevice.fuelType) {
      case 'gasHybrid':
        return '가솔린+전기';
      default:
        return '휘발유';
    }
  }

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

  Future<void> selectSubscriptionInfo() async {
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    final subscriptionControllerApi = wegooli.getSubscriptionControllerApi();
    final response = await subscriptionControllerApi.selectSubscriptionInfo(
        accountId: currentUser.id!, teamSeq: teamSeq!);
    if (response.data == null) {
      return;
    }
    print('response.data!.first; ${response.data!.first}');
    subscriptionModel.value = response.data!.first;
  }

  Future<void> unsubscribe() async {
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    SubmitWithdrawalModel submitWithdrawalModel = new SubmitWithdrawalModel(
        accountId: currentUser.id!,
        date: DateTime.now().toString(),
        teamSeq: teamSeq!);
    await wegooli
        .getSubscriptionControllerApi()
        .submitWithdrawal(submitWithdrawalModel: submitWithdrawalModel);
    await selectSubscriptionInfo();
  }

  Future<void> subscribe() async {
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    SubmitWithdrawalModel submitWithdrawalModel = new SubmitWithdrawalModel(
        accountId: currentUser.id!, date: null, teamSeq: teamSeq!);
    await wegooli
        .getSubscriptionControllerApi()
        .submitWithdrawal(submitWithdrawalModel: submitWithdrawalModel);
    await selectSubscriptionInfo();
  }

  String calcDate() {
    if (subscriptionModel.value.createdAt == null) {
      return '-';
    }
    if (subscriptionModel.value.withdrawalAt != null) {
      return subscriptionModel.value.withdrawalAt!.substring(0, 10);
    } else {
      DateTime current = DateTime.now();
      DateTime parsedDate = DateTime.parse(subscriptionModel.value.createdAt!);
      DateTime modifiedDate =
          DateTime(current.year, parsedDate.month + 1, parsedDate.day);
      return DateFormat('yyyy-MM-dd').format(modifiedDate);
    }
  }

  Future<void> retrieveManagement() async {
    if (teamSeq == null) {
      return;
    }
    final response = await wegooli
        .getCarManagementControllerApi()
        .selectCarManagement(seq: teamSeq!);
    CarManagementModel? carManagement = response.data;
    if (carManagement == null) {
      return;
    }
    carManagementModel.value = carManagement;
  }

  Future<void> retrieveInfo() async {
    if (teamSeq == null) {
      return;
    }
    final terminalApi = wegooli.getTerminalControllerApi();
    final terminal = await terminalApi.selectTerminal(seq: teamSeq!);
    print('team.vehicle.dart#L22 terminal.data : ${terminal.data}');
    terminalDevice = terminal.data ?? TerminalModel();
  }

  Future<void> retrieveSchedule() async {
    if (teamSeq == null) {
      return;
    }
    final scheduleApi = wegooli.getScheduleControllerApi();
    final scheduleList =
        await scheduleApi.selectScheduleList(teamSeq: teamSeq!);
    print('team.vehicle.dart#L28 scheduleList.data : ${scheduleList.data}');
    bool using = scheduleList.data!.any(compose);
    availableNow.value = using;
    print('done : $using');
  }
}
