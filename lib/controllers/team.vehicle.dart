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
  late Rx<SubscriptionModel> subscriptionModel = SubscriptionModel().obs;
  late Rx<CarManagementModel> carManagementModel = CarManagementModel().obs;

  /// late init from UserController values.
  late int? _teamSeq;
  int? get teamSeq => _teamSeq;
  late User _currentUser = const User();
  User get currentUser => _currentUser;
  late String _nickname = '위굴리';
  String get nickname => _nickname;
  late List<TeamAccountModel> _members = [];
  List<TeamAccountModel> get members => _members;

  @override
  Future<void> onInit() async {
    final userController = UserController.to;
    _currentUser = userController.currentUser.value;
    _teamSeq = userController.getTeamSeq();
    _members = userController.members;
    _nickname =
        _currentUser.nickname != null ? _currentUser.nickname! : _nickname;
    await retrieveInfo();
    await retrieveSchedule();
    await selectSubscriptionInfo();
    await retrieveManagement();
    super.onInit();
  }

  void getClient(String? accountId) {
    final whoDriving =
        members.firstWhereOrNull((it) => it.accountId == accountId);
    print('team.vehicle.dart#L48 ${whoDriving?.nickname} is Driving');
    driverName.text = whoDriving?.nickname ?? '';
  }

  bool compose(ScheduleModel schedule) {
    getClient(schedule.accountId);
    if (schedule.startAt == null || schedule.endAt == null) {
      return false;
    } else {
      final last = DateTime.parse(schedule.startAt!);
      final later = DateTime.parse(schedule.endAt!);
      final now = DateTime.now();
      return now.isBetween(last, later);
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

  ServiceDetail? serviceDetail;
  RxBool availableNow = false.obs;

  @override
  void onClose() {
    super.onClose();
    driverName.dispose();
    invitation.dispose();
  }

  Future<bool?> openDoor() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response =
        await deviceControllerApi.doorOpen(carNum: terminalDevice.carNum!);
    print('response : $response');
    return response.data;
  }

  Future<bool?> closeDoor() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response =
        await deviceControllerApi.doorClose(carNum: terminalDevice.carNum!);
    print('response : $response');
    return response.data;
  }

  Future<bool?> horn() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response =
        await deviceControllerApi.turnOnHorn(carNum: terminalDevice.carNum!);
    print('response : $response');
    return response.data;
  }

  Future<bool?> emergencyLight() async {
    final deviceControllerApi = wegooli.getDeviceControllerApi();
    final response = await deviceControllerApi.turnOnEmergencyLight(
        carNum: terminalDevice.carNum!);
    print('response : $response');
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
    print('구독정보; ${response.data!.first}');
    subscriptionModel.value = response.data!.first;
  }

  Future<void> unsubscribe() async {
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    final submitWithdrawalModel = SubmitWithdrawalModel(
        accountId: currentUser.id,
        date: subscriptionModel.value.endAt,
        teamSeq: teamSeq);
    await wegooli
        .getSubscriptionControllerApi()
        .submitWithdrawal(submitWithdrawalModel: submitWithdrawalModel);
    await selectSubscriptionInfo();
    await goUnsubscribeInfo();
  }

  Future<void> subscribe() async {
    print('currentUser.id ${currentUser.id}');
    print('teamSeq $teamSeq');
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    final submitWithdrawalModel =
        SubmitWithdrawalModel(accountId: currentUser.id, teamSeq: teamSeq);
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
      final current = DateTime.now();
      final parsedDate = DateTime.parse(subscriptionModel.value.createdAt!);
      final modifiedDate =
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
    final carManagement = response.data;
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
    print('team.vehicle.dart#L230 terminal.data : ${terminal.data}');
    _terminalDevice = terminal.data ?? TerminalModel();
  }

  Future<void> retrieveSchedule() async {
    if (teamSeq == null) {
      return;
    }
    final scheduleApi = wegooli.getScheduleControllerApi();
    final scheduleList = await scheduleApi.selectScheduleList(teamSeq: teamSeq);
    print('team.vehicle.dart#L241 scheduleList.data : ${scheduleList.data}');
    final using = scheduleList.data!.any(compose);
    print('done : $using');
    availableNow.value = using;
  }

  Future<bool> joinTeam() async {
    final api = wegooli.getTeamAccountConnectionControllerApi();
    final accountId = currentUser.id;
    if (accountId != null && invitation.text.length == 10) {
      print('joinTeam() accountId: $accountId |invitation: ${invitation.text}');
      final response = await api.inviteTeamAccount(
          accountId: accountId, code: invitation.text);
      return response.data == 'success';
    }
    return false;
  }
}
