// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UserController extends GetxController {
  final _service = UserAccountService();
  final _teamAccountService = TeamAccountService();
  final _reservationsService = ReservationsService();
  static UserController get to => Get.isRegistered<UserController>()
      ? Get.find<UserController>()
      : Get.put(UserController());

  TextEditingController primaryAddress = TextEditingController();
  TextEditingController detailAddress = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController invitation = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController postCode = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController birthDay = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController pinCodes = TextEditingController();
  TextEditingController phoneNum = TextEditingController();

  SelectionPopupModel? telecom;
  List<SelectionPopupModel> telecoms = [
    SelectionPopupModel(id: 01, title: 'SKT'),
    SelectionPopupModel(id: 02, title: 'KT'),
    SelectionPopupModel(id: 03, title: 'LG U+'),
    SelectionPopupModel(id: 04, title: 'SKT 알뜰폰'),
    SelectionPopupModel(id: 05, title: 'KT 알뜰폰'),
    SelectionPopupModel(id: 06, title: 'LG U+ 알뜰폰'),
  ];

  Rx<User> currentUser = const User().obs;
  final RxList<TeamAccountModel> _members = RxList<TeamAccountModel>([]);
  RxList<TeamAccountModel> get members => _members;
  final RxList<Schedule> _schedules = RxList<Schedule>.of([]);
  RxList<Schedule> get schedules => _schedules;

  final RxList<TeamAccountConnectionResponse> _teams =
      RxList<TeamAccountConnectionResponse>.of([]);
  RxList<TeamAccountConnectionResponse> get teams => _teams;
  int? get firstTeamSeq => teams.firstOrNull?.teamSeq;

  TeamCarConnection carConnection = TeamCarConnection();

  RxBool isAuthenticated = false.obs;
  RxBool isShowPassword = false.obs;
  RxBool isShowConfirmPassword = false.obs;
  RxBool isWaitingOtpCode = false.obs;
  RxBool verifyCodeExpire = false.obs;
  bool _isValidatedPhone = false;
  bool get isValidatedPhone => _isValidatedPhone;

  DateTime verificaticonExpireTime() {
    return DateTime.now().add(const Duration(minutes: 3));
  }

  Future<String?> sendVerificationCode() async {
    // Update the UI - wait for the user to enter the SMS code
    if (telecom != null && phoneNum.text.isNotEmpty) {
      isWaitingOtpCode.value = true;
      return showDialog<String>(
        context: Get.context!,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
              title: const Text('SMS code:'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    popWithValue<String?>(context, pinCodes.text);
                  },
                  child: const Text('Sign in'),
                ),
                OutlinedButton(
                  onPressed: () {
                    pinCodes.clear();
                    popWithValue<String?>(context, null);
                  },
                  child: const Text('Cancel'),
                ),
              ],
              content: Container(
                  padding: const EdgeInsets.all(20),
                  child: VerificationCodeFormField(controller: this)));
        },
      );
    } else {
      Get.showSnackbar(const GetSnackBar(title: '번호가 정확하지 않습니다.'));
      return null;
    }
  }

  void verificationSuccess() {
    _isValidatedPhone = true;
  }

  void verificaticonIsExpired() {
    print('[Auth] 휴대폰 인증 코드 만료');
    verifyCodeExpire.value = true;
    // TODO: 다음 로직들 실행
    // 1. 기존 인증번호 코드 무효화 (서버에 타임아웃 전달)
    // 2. 사용자에게 알림 창으로 타임아웃 사실 알림. 재발송 버튼 실행 유도.
    // 3. 재발송 버튼 실행 시까지 인풋창 비활성화를 통해 더블 전송을 예방함.
  }

  void setDropdownItem(SelectionPopupModel value) {
    print('Dropdown Selected ==> ${value.title}');
    telecom = value;
  }

  bool get isValid =>
      postCode.text.isNotEmpty &&
      primaryAddress.text.isNotEmpty &&
      detailAddress.text.isNotEmpty &&
      emailAddress.text.isEmail &&
      password.text.isNotEmpty &&
      nickname.text.isNotEmpty &&
      rePassword.text.isNotEmpty &&
      (password.text == rePassword.text);

  @override
  void onClose() {
    super.onClose();
    fullName.dispose();
    birthDay.dispose();
    socialId.dispose();
    phoneNum.dispose();
    pinCodes.dispose();
    username.dispose();
    postCode.dispose();
    primaryAddress.dispose();
    detailAddress.dispose();
    emailAddress.dispose();
    password.dispose();
    rePassword.dispose();
    nickname.dispose();
  }

  Future<void> authorize() async {
    print('user.username: ${username.text}\nuser.password: ${password.text}');
    final userLike = await _service.login(username.text, password.text);
    if (userLike != null) {
      currentUser(userLike);
      isAuthenticated(true);
    }
  }

  Future<void> preProcessor() async {
    final accountId = currentUser.value.id;
    if (accountId == null) {
      return;
    }
    _teams(await _teamAccountService.findTeams(accountId));
    // print('_teams : $_teams');
    _members(getMembers());
    // print('_members : $_members');
    _schedules(await retrieveSchedules(firstTeamSeq));
    // print('_schedules : $_schedules');
    goSharedSchedule();
  }

  TeamAccountConnectionResponse? getFirstTeamOrNull() {
    return teams.firstOrNull;
  }

  List<TeamAccountModel> getMembers() {
    final team = getFirstTeamOrNull();
    final members = team?.account;
    if (members == null) {
      return List.empty();
    }
    // print('getMembers() : $members');
    return members;
  }

  Future<bool> logOut() async {
    return _service.logOut();
  }

  Future<bool> signOut() async {
    if (currentUser.value.id == null) {
      return false;
    }
    return _service.signOut(currentUser.value.id!);
  }

  Future<List<Schedule>> retrieveSchedules(int? teamSeq) async {
    if (teamSeq == null) {
      return List.empty();
    }
    return _reservationsService.retrieveSchedules(teamSeq);
  }

  Future<void> deleteSchedule(int seq) async {
    try {
      await _reservationsService.deleteSchedule(seq);
      return popWithValue(Get.context!, true);
    } catch (e) {
      return popWithValue(Get.context!, false);
    }
  }
}
