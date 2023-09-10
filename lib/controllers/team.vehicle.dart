// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class VehicleController extends GetxController {
  static VehicleController get to => Get.isRegistered<VehicleController>()
      ? Get.find<VehicleController>()
      : Get.put(VehicleController());

  final _manage = CarManagementService();
  final _service = SubscriptionService();

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
    await getSubscription();
    await retrieveManagement();
    super.onInit();
  }

  void getClient(String? accountId) {
    final whoDriving =
        members.firstWhereOrNull((it) => it.accountId == accountId);
    print('team.vehicle.dart#L48 ${whoDriving?.nickname} is Driving');
    driverName.text = whoDriving?.nickname ?? '';
  }

  bool compose(Schedule schedule) {
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
    return await _manage.openDoor(terminalDevice.carNum!);
  }

  Future<bool?> closeDoor() async {
    return await _manage.closeDoor(terminalDevice.carNum!);
  }

  Future<bool?> horn() async {
    return await _manage.horn(terminalDevice.carNum!);
  }

  Future<bool?> emergencyLight() async {
    return await _manage.emergencyLight(terminalDevice.carNum!);
  }

  Future<void> getSubscription() async {
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    final response = await _service.loadSubscriptions(currentUser.id!, teamSeq!);
    print('구독정보; ${response.first}');
    subscriptionModel.value = response.first;
  }

  Future<void> unsubscribe() async {
    if (currentUser.id == null || teamSeq == null) {
      return;
    }
    final submitWithdrawalModel = SubmitWithdrawalModel(
        accountId: currentUser.id,
        date: subscriptionModel.value.endAt,
        teamSeq: teamSeq);
    await _service.submitWithdrawal(submitWithdrawalModel);
    await getSubscription();
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
    await _service.submitWithdrawal(submitWithdrawalModel);
    await getSubscription();
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
    final carManagement = await _manage.selectCarManagement(teamSeq!);
    carManagementModel.value = carManagement;
  }

  Future<void> retrieveInfo() async {
    _terminalDevice = await _manage.retrieveInfo(teamSeq);
  }

  Future<void> retrieveSchedule() async {
    if (teamSeq == null) {
      return;
    }
    final scheduleList =
        await ReservationsService().retrieveSchedules(teamSeq!);
    print('team.vehicle.dart#L241 scheduleList.data : ${scheduleList}');
    final onUsing = scheduleList.any(compose);
    availableNow.value = onUsing;
  }

  Future<bool> joinTeam() async {
    final accountId = currentUser.id;
    if (accountId != null && invitation.text.length == 10) {
      print('joinTeam() accountId: $accountId |invitation: ${invitation.text}');
      return await TeamAccountService()
          .inviteTeamAccount(accountId, invitation.text);
    }
    return false;
  }
}
