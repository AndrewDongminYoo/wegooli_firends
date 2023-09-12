// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UserController extends GetxController {
  final _service = UserAccountService();
  final _teamAccountService = TeamAccountService();
  final _teamService = TeamService();
  final _reservationsService = ReservationsService();
  static UserController get to => Get.isRegistered<UserController>()
      ? Get.find<UserController>()
      : Get.put(UserController());

  /// 로그인 - 아이디, 비밀번호
  TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();

  /// 회원가입[1] - 이름, 주민등록번호, 통신사, 핸드폰번호, 인증번호
  TextEditingController realName = TextEditingController(); // 한국이름
  TextEditingController birthDay = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController phoneNum = TextEditingController();
  SelectionPopupModel? telecom; // 통신사 (DropdownSelectionData)
  TextEditingController pinCodes = TextEditingController();

  /// 회원가입[2] - 집주소, 이메일주소, 비밀번호, 닉네임
  TextEditingController postCode = TextEditingController();
  TextEditingController primaryAddress = TextEditingController();
  TextEditingController detailAddress = TextEditingController();
  TextEditingController emailAddress =
      TextEditingController(); // 이메일 (아이디로 사용예정)
  TextEditingController password =
      TextEditingController(); // 사용 후 반드시 dispose할 것 (여러 페이지에서 사용될 것으로 예상)
  TextEditingController rePassword = TextEditingController();
  TextEditingController nickname = TextEditingController();

  /// 회원가입[3] - 초대코드 입력
  TextEditingController invitation = TextEditingController();

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

  Verify oneTimeCode = Verify.Waiting;

  DateTime verificaticonExpireTime() {
    return DateTime.now().add(const Duration(minutes: 3));
  }

  Future<String?> sendVerificationCode() async {
    // Update the UI - wait for the user to enter the SMS code
    PhoneAuthCredential? credential;
    print('${telecom!.title}| +82 ${phoneNum.text}');
    if (telecom != null && phoneNum.text.isNotEmpty) {
      oneTimeCode = Verify.Waiting;
      var phoneNumber =
          '+82 ${phoneNum.text.replaceAll('-', ' ').substring(1)}';
      if (!kIsWeb) {
        await auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          // Android 기기의 SMS 코드 자동 처리.
          verificationCompleted: (PhoneAuthCredential _credential) {
            credential = _credential;
            oneTimeCode = Verify.Success;
          },
          // 잘못된 전화번호나 SMS 할당량 초과 여부 등의 실패 이벤트
          verificationFailed: (FirebaseAuthException e) {
            Get.showSnackbar(
                const GetSnackBar(title: '휴대폰 인증과정에서 오류가 발생했습니다.'));
            oneTimeCode = Verify.Failure;
            Future.delayed(const Duration(seconds: 5))
              ..then((value) => oneTimeCode = Verify.Expired);
          },
          // Firebase에서 기기로 코드가 전송된 경우를 처리하며 사용자에게 코드를 입력하라는 메시지를 표시하는 데 사용
          codeSent: (String verificationId, int? resendToken) {
            Get.showSnackbar(const GetSnackBar(
                title: '입력한 휴대폰으로 전송된 인증 SMS를 확인해주세요.',
                message: '3분내 입력하지 않을 경우 인증코드가 만료됩니다.'));
          },
          // 자동 SMS 코드 처리에 실패한 경우 시간 초과를 처리
          codeAutoRetrievalTimeout: (String verificationId) {
            oneTimeCode = Verify.Expired;
            Get.showSnackbar(
                const GetSnackBar(title: '입력한 휴대폰으로 전송된 인증 SMS를 확인해주세요.'));
          },
        );
      } else {
        var confirmationResult = await auth.signInWithPhoneNumber(phoneNumber);
        print('confirmationResult: $confirmationResult');
        var smsCode = pinCodes.text;
        print('smsCode: $smsCode');
        var _credential = await confirmationResult.confirm(smsCode);
        credential = _credential.credential as PhoneAuthCredential?;
        oneTimeCode = Verify.Success;
      }
      print('verificationId : ${credential!.verificationId}');
      print('smsCode : ${credential!.smsCode}');
      print('accessToken : ${credential!.accessToken}');
      print('providerId : ${credential!.providerId}');
      print('signInMethod : ${credential!.signInMethod}');
      print('token : ${credential!.token}');
      return credential!.verificationId;
    } else {
      Get.showSnackbar(const GetSnackBar(title: '번호가 정확하지 않습니다.'));
      print('Error during Phone number verification');
      return null;
    }
  }

  void verificaticonIsExpired() {
    print('[Auth] 휴대폰 인증 코드 만료');
    oneTimeCode = Verify.Expired;
    // TODO: 다음 로직들 실행
    // 1. 기존 인증번호 코드 무효화 (서버에 타임아웃 전달)
    // 2. 사용자에게 알림 창으로 타임아웃 사실 알림. 재발송 버튼 실행 유도.
    // 3. 재발송 버튼 실행 시까지 인풋창 비활성화를 통해 더블 전송을 예방함.
  }

  void setDropdownItem(SelectionPopupModel value) {
    print('Dropdown Selected ==> ${value.title}');
    telecom = value;
  }

  bool get idPwLoginCompleted => false;
  bool get acceptTermsCompleted => false;
  bool get phoneAuthCompleted =>
      username.text.isNotEmpty &&
      birthDay.text.isNotEmpty &&
      birthDay.text.isNumericOnly &&
      socialId.text.isNotEmpty &&
      socialId.text.isNumericOnly &&
      phoneNum.text.isNotEmpty &&
      isValidPhone(phoneNum.text) &&
      pinCodes.text.isNotEmpty &&
      pinCodes.text.isNumericOnly &&
      pinCodes.text.length == 6;

  bool get registerCreditCardCompleted => false;
  bool get registerLicenseCompleted => false;
  bool get registerSuccessCompleted => false;
  bool get registerZipCodeCompleted =>
      postCode.text.isNotEmpty &&
      primaryAddress.text.isNotEmpty &&
      detailAddress.text.isNotEmpty &&
      emailAddress.text.isEmail &&
      isValidEmail(emailAddress.text) &&
      password.text.isNotEmpty &&
      rePassword.text.isNotEmpty &&
      nickname.text.isNotEmpty &&
      (password.text == rePassword.text);

  @override
  void onClose() {
    super.onClose();
    realName.dispose();
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

  /// 로그인
  Future<void> signIn() async {
    print('username: ${emailAddress.text}\npassword: ${password.text}');
    final userLike = await _service.login(emailAddress.text, password.text);
    if (userLike != null) {
      currentUser(userLike);
      oneTimeCode = Verify.Success;
    }
  }

  /// 로그아웃
  Future<bool> logOut() async {
    return _service.logOut();
  }

  /// 회원탈퇴
  Future<bool> signOut() async {
    if (currentUser.value.id == null) {
      return false;
    }
    return _service.signOut(currentUser.value.id!);
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

  acceptanceComplete(List<Agreement> agreements) {
    agreements.map(toAccountAgreementModel).toList();
    // _service.sendAcceptanceRequest();
  }

  AccountAgreementModel toAccountAgreementModel(Agreement e) {
    return AccountAgreementModel(
      classification: currentUser.value.id,
      accountId: e.title,
      agreeYn: e.accepted ? 'Y' : 'N',
    );
  }

  Future<String?> getTeamCode() async {
    if (firstTeamSeq == null) {
      return null;
    }
    final teamModel = await _teamService.findTeamBySeqOrNull(firstTeamSeq!);
    return teamModel?.teamCode;
  }
}

enum Verify {
  Waiting,
  Expired,
  Success,
  Failure,
}
