// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
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
    Term(agree: false, name: '개인정보 처리방침', body: privacy_policy),
    Term(agree: false, name: '개인 위치정보 처리 방침', body: location_data),
    Term(agree: false, name: '위치기반서비스 이용약관', body: location_based),
    Term(agree: false, name: '자동차대여 표준약관', body: car_rental_term),
    Term(agree: false, name: '차량 위치정보 수집이용 제공동의', body: car_location),
    Term(agree: false, name: '마케팅 목적 개인정보 수집이용', body: marketing, opt: true),
  ];

  /// 로그인 - 아이디, 비밀번호
  String username = '';
  String password = '';

  /// 회원가입[1] - 이름, 주민등록번호, 통신사, 핸드폰번호, 인증번호
  TextEditingController realName = TextEditingController(); // 한국이름
  TextEditingController birthDay = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController phoneNum = TextEditingController();
  SelectionPopupModel? telecom; // 통신사 (DropdownSelectionData)
  TextEditingController pinCodes = TextEditingController();

  /// 회원가입[2] - 집주소, 이메일주소, 비밀번호, 닉네임
  TextEditingController postCode = TextEditingController(text: kIsWeb ? 'postal code' : null);
  TextEditingController primaryAddress = TextEditingController(text: kIsWeb ? 'street address' : null);
  TextEditingController detailAddress = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController nickname = TextEditingController();

  /// 회원가입[3] - 초대코드 입력
  TextEditingController invitation = TextEditingController();

  User currentUser = const User(
    phoneNumber: '',
    memberSeq: 0,
    nickname: '',
    email: '',
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

  @protected
  SignUp _state = SignUp.WAITING;

  SignUp get state {
    print('get state: $_state');
    return _state;
  }

  set state(SignUp value) {
    print('set state: $_state -> $value');
    _state = value;
  }

  void setDropdownItem(SelectionPopupModel value) {
    print('Dropdown Selected ==> ${value.title}');
    telecom = value;
  }

  bool get idPwLoginCompleted => false;
  bool get acceptTermsCompleted => false;
  bool get phoneAuthCompleted =>
      realName.text.isNotEmpty &&
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
      username.isEmail &&
      isValidEmail(username) &&
      password.isNotEmpty &&
      rePassword.text.isNotEmpty &&
      nickname.text.isNotEmpty &&
      (password == rePassword.text);

  /// 로그인
  Future<User> login() async {
    print('username: $username\npassword: $password');
    final user = await _service.login(username, password);
    if (user is User) {
      currentUser = user;
      teams.value = await findTeams();
      teams.refresh();
      schedules.value = await retrieveSchedules();
      schedules.refresh();
      return user;
    } else {
      throw CustomException('로그인에 실패하였습니다.');
    }
  }

  /// 로그아웃
  Future<void> logOut() async {
    await _service.logOut();
    await PrefUtils.clearAll();
    await Get.offAllNamed(AppRoutes.idPwLogin);
  }

  /// 회원탈퇴
  Future<bool> signOut() async {
    await PrefUtils.clearAll();
    return _service.signOut(currentUser.id!);
  }

  Future<List<TeamAccountConnectionResponse>> findTeams() async {
    if (isAuthenticated) {
      print('currentUser : $currentUser');
      return _teamAccountService.findTeams(currentUser.id!);
    } else {
      return <TeamAccountConnectionResponse>[];
    }
  }

  TeamAccountConnectionResponse? get firstTeamsOrNull => teams.firstOrNull;

  List<TeamAccountModel> get members {
    final team = firstTeamsOrNull;
    _members(team?.account ?? []);
    // print('_members : $_members');
    return _members.toList();
  }

  Future<List<Schedule>> retrieveSchedules() async {
    if (firstTeamSeq == null) {
      return List.empty();
    } else {
      return _reservationsService.retrieveSchedules(firstTeamSeq!);
    }
  }

  Future<bool> deleteSchedule(int seq) async {
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

  /// 회원가입
  Future<UserDto?> signUp() {
    return _service.signUp(
      realName.text,
      birthDay.text,
      socialId.text,
      phoneNum.text,
      postCode.text,
      primaryAddress.text,
      detailAddress.text,
      username,
      password,
      nickname.text,
    );
  }

  AccountAgreementRequest toAccountAgreementModel(Term e) {
    return AccountAgreementRequest(
      classification: e.name,
      agreeYn: e.agree.toYN,
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
    required this.name,
    required this.body,
    required this.agree,
    this.opt = false,
  });

  final String name;
  final bool opt;
  final String body;
  bool agree;

  String get title => "[${opt ? '선택' : '필수'}] $name";
}

extension YN on bool {
  String get toYN => this ? 'Y' : 'N';
}
