// 📦 Package imports:
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/lib.dart';

class VehicleController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
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
  late User _currentUser;
  User get currentUser => _currentUser;
  late String _nickname = '위굴리';
  String get nickname => _nickname;
  late List<TeamAccountModel> _members = [];
  List<TeamAccountModel> get members => _members;

  @override
  Future<void> onInit() async {
    final userController = UserController.to;
    _currentUser = userController.currentUser;
    _teamSeq = userController.firstTeamSeq;
    _members = userController.members;
    _nickname = _currentUser.nickname!;
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
    driverName = whoDriving?.nickname ?? '';
  }

  bool compose(Schedule schedule) {
    getClient(schedule.accountId);
    if (schedule.startAt == null ||
        schedule.endAt == null ||
        schedule.accountId == currentUser.id) {
      return false;
    } else {
      final last = DateTime.parse(schedule.startAt!);
      final later = DateTime.parse(schedule.endAt!);
      final now = DateTime.now();
      return now.isBetween(last, later);
    }
  }

  // Text Input Controllers
  String driverName = '다른 팀원';

  // Domain Specific Model
  TerminalModel? _terminalDevice;
  TerminalModel get terminalDevice {
    if (_terminalDevice == null) {
      retrieveInfo();
      return TerminalModel(
        carNum: '', // 12가 3456
        fuelType: 'gasHybrid',
        fuel: '', // 0-100
        model: '', // l10ns.carRayGen3
        carImage: '', // Assets.cars.raySM9y.path,
        segment: '', // l10ns.segmentB
        seats: 4,
      );
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
      case 'gasolineLPG':
        return '바이퓨얼';
      case 'gasHybrid':
        return '가솔린+전기';
      case 'dieselHybrid':
        return '디젤+전기';
      case 'electricity':
        return '전기';
      case 'diesel':
        return '경유';
      case 'gasoline':
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

  Future<bool?> openDoor() async {
    return _manage.openDoor(terminalDevice.carNum!);
  }

  Future<bool?> closeDoor() async {
    return _manage.closeDoor(terminalDevice.carNum!);
  }

  Future<bool?> horn() async {
    return _manage.horn(terminalDevice.carNum!);
  }

  Future<bool?> emergencyLight() async {
    return _manage.emergencyLight(terminalDevice.carNum!);
  }

  Future<void> getSubscription() async {
    if (teamSeq == null) {
      return;
    }
    final response =
        await _service.loadSubscriptions(currentUser.id!, teamSeq!);
    print('구독정보; ${response.first}');
    subscriptionModel.value = response.first;
  }

  Future<void> unsubscribe() async {
    if (teamSeq == null) {
      return;
    }
    final submitWithdrawalModel = SubmitWithdrawalModel(
        accountId: currentUser.id,
        leavedAt: subscriptionModel.value.endAt,
        teamSeq: teamSeq);
    await _service.submitWithdrawal(submitWithdrawalModel);
    await getSubscription();
    Get.close(2);
    await goUnsubscribeInfo();
  }

  Future<void> subscribe() async {
    print('currentUser.id ${currentUser.id}');
    print('teamSeq $teamSeq');
    if (teamSeq == null) {
      return;
    }
    final submitWithdrawalModel =
        SubmitWithdrawalModel(accountId: currentUser.id, teamSeq: teamSeq);
    await _service.submitWithdrawal(submitWithdrawalModel);
    await getSubscription();
  }

  String calcDate() {
    if (subscriptionModel.value.startAt == null) {
      return '-';
    }
    if (subscriptionModel.value.withdrawalAt != null) {
      return subscriptionModel.value.withdrawalAt!.substring(0, 10);
    } else {
      final current = DateTime.now();
      final parsedDate = DateTime.parse(subscriptionModel.value.startAt!);
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
    print('team.vehicle.dart#L241 scheduleList.data : $scheduleList');
    final onUsing = scheduleList.any(compose);
    availableNow.value = onUsing;
  }

  Future<bool> joinTeam() async {
    final userController = UserController.to;
    final invitation = userController.invitation;
    final accountId = currentUser.id;
    if (invitation.text.length == 10) {
      print('joinTeam() accountId: $accountId |invitation: ${invitation.text}');
      return TeamAccountService()
          .inviteTeamAccount(accountId!, invitation.text);
    }
    return false;
  }
}
