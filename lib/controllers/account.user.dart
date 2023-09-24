// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

User goolier = UserController.to.currentUser;

class UserController extends GetxController {
  final UserAccountService _service = UserAccountService();
  final ReservationsService _reservationsService = ReservationsService();
  AuthMode mode = AuthMode.login;

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
  String? username;
  String? password;

  /// 회원가입[1] - 이름, 주민등록번호, 통신사, 핸드폰번호, 인증번호
  String? koreanName; // 성명 (숫자 NO)
  String? frontNumbers; // 주민등록번호 앞자리 (6자리)
  String? backNumbers; // 주민등록번호 뒷자리 (7자리)
  String? phoneNumWithHyphen; // 전화번호 (010-1234-5678) 13자리
  String? pinCodes; // 인증번호 6자리

  String telecom = 'SKT';

  /// 회원가입[2] - 집주소, 이메일주소, 비밀번호, 닉네임
  String? postCode;
  String? primaryAddress;
  String? detailAddress;
  String? rePassword;
  String? nickname;

  /// 회원가입[3] - 초대코드 입력
  String? invitation;

  User currentUser = const User(
    phoneNumber: '',
    memberSeq: 0,
    nickname: '',
    email: '',
  );

  bool isAuthenticated() => currentUser.isLoggedIn;

  List<AccountAgreementRequest> agreement = [];

  bool phoneAuthCompleted() {
    try {
      return koreanName.isNotNullNorEmpty &&
          frontNumbers.isNotNullNorEmpty &&
          isNumeric(frontNumbers) &&
          backNumbers.isNotNullNorEmpty &&
          isNumeric(backNumbers) &&
          phoneNumWithHyphen.isNotNullNorEmpty &&
          isValidPhone(phoneNumWithHyphen) &&
          pinCodes.isNotNullNorEmpty &&
          isNumeric(pinCodes) &&
          pinCodes!.length == 6;
    } catch (e) {
      return false;
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

  void setDropdownItem(DropdownData value) {
    print('Dropdown Selected ==> ${value.title}');
    telecom = value.title;
  }

  bool registerCreditCardCompleted() => false;
  bool registerZipCodeCompleted() =>
      postCode.isNotNullNorEmpty &&
      primaryAddress.isNotNullNorEmpty &&
      // 상세 주소는 생략 허용해도 될 듯. null이 아닌지만 확인.
      detailAddress != null &&
      username != null &&
      // GetUtils.isEmail(username!) 대신 직접 구현한 함수로 대체
      isValidEmail(username) &&
      password.isNotNullNorEmpty &&
      rePassword.isNotNullNorEmpty &&
      nickname.isNotNullNorEmpty &&
      (password == rePassword);

  /// 로그인
  Future<User> login() async {
    print('controller.login.username: $username\npassword: $password');
    final user = await _service.login(username!, password!);
    if (user is User) {
      currentUser = user;
      return user;
    } else {
      throw CustomException('로그인에 실패하였습니다.');
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
      final result = await _service.sendAcceptanceRequest(agreement);
      print('Send Acceptance Request 등록 결과\n: $result');
    } on Exception catch (e) {
      print('Send Acceptance Request 등록 실패\n $e');
      handleException('acceptanceComplete', e);
      await PrefUtils.saveAgreements(terms);
    }
    await goPhoneAuth();
  }

  /// 회원가입
  Future<UserDto?> signUp() {
    try {
      return _service.signUp(
        koreanName!,
        frontNumbers!,
        backNumbers!,
        phoneNumWithHyphen!,
        postCode!,
        primaryAddress!,
        detailAddress!,
        username!,
        password!,
        nickname!,
      );
    } on Exception catch (e) {
      handleException('signUp', e);
      return Future.error(e);
    }
  }

  AccountAgreementRequest toAccountAgreementModel(Term e) {
    return AccountAgreementRequest(
      classification: e.name,
      agreeYn: e.agree.toYN,
    );
  }
}

enum SignUp {
  WAITING,
  EXPIRED,
  SUCCESS,
  FAILURE,
}

/// 현재 인증 세션의 모드([AuthMode.login] 또는 [AuthMode.register] 중 하나)입니다.
// ignore: public_member_api_docs
enum AuthMode { login, register }

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

extension UserValidation on User {
  bool get isLoggedIn {
    try {
      return id.isNotNullNorEmpty &&
          memberSeq!.isGreaterThan(0) &&
          nickname.isNotNullNorEmpty &&
          email.isNotNullNorEmpty &&
          // isValidEmail(email) &&
          // isValidPhone(phoneNumber);
          phoneNumber.isNotNullNorEmpty;
    } catch (e) {
      return false;
    }
  }
}
