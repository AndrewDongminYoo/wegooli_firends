// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class UserController extends GetxController {
  final UserAccountService _service = UserAccountService();
  final TeamAccountService _teamAccountService = TeamAccountService();
  final ReservationsService _reservationsService = ReservationsService();
  final TeamService _teamService = TeamService();

  // ignore: prefer_constructors_over_static_methods
  static UserController get to => Get.isRegistered<UserController>()
      ? Get.find<UserController>()
      : Get.put(UserController());

  List<Term> terms = [
    Term(agree: false, title: '개인정보 처리방침', body: privacy_policy),
    Term(agree: false, title: '개인 위치정보 처리 방침', body: location_data),
    Term(agree: false, title: '위치기반서비스 이용약관', body: location_based),
    Term(agree: false, title: '자동차대여 표준약관', body: car_rental_term),
    Term(agree: false, title: '차량 위치정보 수집이용 제공동의', body: car_location),
    Term(agree: false, title: '마케팅 목적 개인정보 수집이용', body: marketing, opt: true),
  ];

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

  User currentUser = const User(
    phoneNumber: '',
    memberSeq: 0,
    nickname: '',
    email: '',
    id: '',
  );

  bool get isAuthenticated =>
      currentUser.id != null &&
      currentUser.id!.isNotEmpty &&
      currentUser.memberSeq != null &&
      currentUser.memberSeq!.isGreaterThan(0) &&
      currentUser.nickname != null &&
      currentUser.nickname!.isNotEmpty &&
      currentUser.email != null &&
      currentUser.email!.isNotEmpty &&
      currentUser.phoneNumber != null &&
      currentUser.phoneNumber!.isNotEmpty;

  final RxList<TeamAccountModel> _members = RxList<TeamAccountModel>([]);
  final RxList<Schedule> _schedules = RxList<Schedule>.of([]);
  RxList<Schedule> get schedules => _schedules;
  List<AccountAgreementRequest> agreement = [];
  final RxList<TeamAccountConnectionResponse> _teams =
      RxList<TeamAccountConnectionResponse>.of([]);
  RxList<TeamAccountConnectionResponse> get teams => _teams;
  int? get firstTeamSeq => teams.firstOrNull?.teamSeq;

  SignUp state = SignUp.WAITING;

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
      currentUser = userLike;
      state = SignUp.SUCCESS;
    }
    return Get.forceAppUpdate();
  }

  /// 로그아웃
  Future<void> logOut() async {
    await _service.logOut();
    await Future.delayed(
      const Duration(seconds: 2),
      () => Get.delete<UserController>(),
    );
    await PrefUtils.clearAll();
    await goIdPwLogin();
  }

  /// 회원탈퇴
  Future<bool> signOut() async {
    await PrefUtils.clearAll();
    return _service.signOut(currentUser.id!);
  }

  Future<void> preProcessor() async {
    final accountId = currentUser.id;
    _teams(await _teamAccountService.findTeams(accountId!));
    _schedules(await retrieveSchedules(firstTeamSeq));
    await goSharedSchedule();
  }

  TeamAccountConnectionResponse? get firstTeamsOrNull => teams.firstOrNull;

  List<TeamAccountModel> get members {
    final team = firstTeamsOrNull;
    _members(team?.account ?? []);
    // print('_members : $_members');
    return _members.toList();
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

  Future<void> acceptanceComplete() async {
    agreement = terms.map(toAccountAgreementModel).toList();
    print(agreement);
    try {
      await _service.sendAcceptanceRequest(agreement);
    } catch (e) {
      print('Send Acceptance Request 등록 실패\n $e');
      PrefUtils.saveAgreements(terms);
    }
    await goPhoneAuth();
  }

  AccountAgreementRequest toAccountAgreementModel(Term e) {
    return AccountAgreementRequest(
      classification: e.title,
      agreeYn: e.agree ? 'Y' : 'N',
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

enum SignUp {
  WAITING,
  EXPIRED,
  SUCCESS,
  FAILURE,
}

class Term {
  Term({
    required this.title,
    required this.body,
    required this.agree,
    this.opt = false,
  });

  final String title;
  final bool opt;
  final String body;
  bool agree;
}
