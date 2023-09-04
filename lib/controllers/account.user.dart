// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UserController extends GetxController {
  final wegooli = WegooliFriends.client;
  static UserController get to => Get.isRegistered<UserController>()
      ? Get.find<UserController>()
      : Get.put(UserController());
  TextEditingController primaryAddress = TextEditingController();
  TextEditingController detailAddress = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController inviteCode = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController postCode = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController birthDay = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController pinCodes = TextEditingController();
  TextEditingController phoneNum = TextEditingController();

  SelectionPopupModel? phoneCarriers;
  List<SelectionPopupModel> telecoms = [
    SelectionPopupModel(id: 011, title: "SKT"),
    SelectionPopupModel(id: 016, title: "KT"),
    SelectionPopupModel(id: 019, title: "LG"),
  ];

  Rx<UserDTO> _currentUser = UserDTO().obs;
  Rx<UserDTO> get currentUser => _currentUser;
  set currentUser(Rx<UserDTO> value) {
    _currentUser = value;
  }

  RxList<TeamAccountModel> _members = RxList<TeamAccountModel>([]);
  RxList<TeamAccountModel> get members => _members;
  set members(RxList<TeamAccountModel> value) {
    _members = value;
  }

  TeamCarConnection _carConnection = TeamCarConnection();
  TeamCarConnection get carConnection => _carConnection;
  set carConnection(TeamCarConnection value) {
    _carConnection = value;
  }

  RxBool isAuthenticated = false.obs;
  RxBool isShowPassword = false.obs;
  RxBool isShowConfirmPassword = false.obs;
  RxBool isWaitingOtpCode = false.obs;
  RxBool verifyCodeExpire = false.obs;

  // var api = wegooli.getUserControllerApi();
  // await api.checkId();
  // await api.generateToken();
  // await api.getUserDetail();
  // await api.login();
  // await api.logOut();
  // await api.selectAccount();
  // await api.selectMember();
  // await api.selectUserList();
  // await api.signIn();
  // await api.signOut();
  // await api.signup();
  // await api.updateUser();

  bool get isValidatedPhone {
    // TODO: 휴대폰 인증 로직이 필요합니다.
    return true;
  }

  DateTime verificaticonExpireTime() {
    return DateTime.now().add(Duration(minutes: 3));
  }

  void sendVerificationCode() {
    if (phoneCarriers != null && phoneNum.text.isNotEmpty) {
      isWaitingOtpCode.value = true;
      print('인증번호가 발송되었습니다.');
      // TODO: 휴대폰 인증 로직이 필요합니다.
      // 숫자 n개 리턴하는 동작 서버에서 실행.
      // 정확한 숫자 클라이언트에서 보관하고 있거나,
      // 서버에서만 가지고 있다가 클라이언트에서 인증 확인 시에 비교 처리
    } else {
      Get.dialog(Text('어림도없다'));
    }
  }

  void verificaticonIsExpired() {
    print('verificationCodeHasExpired called!!!');
    verifyCodeExpire.value = true;
    // TODO: 다음 로직들 실행
    // 1. 기존 인증번호 코드 무효화 (서버에 타임아웃 전달)
    // 2. 사용자에게 알림 창으로 타임아웃 사실 알림. 재발송 버튼 실행 유도.
    // 3. 재발송 버튼 실행 시까지 인풋창 비활성화를 통해 더블 전송을 예방함.
  }

  void setDropdownItem(SelectionPopupModel value) {
    print('Selected Drop down value ==> ${value.title}');
    phoneCarriers = value;
  }

  bool get isValid =>
      postCode.text.length > 0 &&
      primaryAddress.text.length > 0 &&
      detailAddress.text.length > 0 &&
      emailAddress.text.isEmail &&
      password.text.length > 0 &&
      nickname.text.length > 0 &&
      rePassword.text.length > 0 &&
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
    final api = wegooli.getUserControllerApi();

    try {
      final response =
          await api.login(id: username.text, password: password.text);
      print('response : ${response}');
      Result? result = response.data?.result;
      String? bearerToken;
      if (result == null) {
        print('`login()` 반환값: $result, ${response.data?.resultCode}');
        Get.dialog(Center(
            child: Assets.lotties.xInCircle.lottie(height: 250, width: 250)));
        isAuthenticated.value = false;
        bearerToken = PrefUtils.storage.getToken();
      } else {
        bearerToken = result.token as String;
      }
      // BEARER prefix 분리.
      String token = bearerToken.split(' ').last;
      print('token: ${token}');
      // BEARER prefix 제거
      var payload = JwtDecoder.decode(token);
      currentUser.value = UserDTO.fromJson(payload);
      if (JwtDecoder.isExpired(token)) {
        print('❌ 만료된 토큰입니다.');
        isAuthenticated.value = false;
        /// refreshToken API Call!!
      } else {
        print('✅ 유효한 토큰입니다.');
        isAuthenticated.value = true;
      }
      PrefUtils.storage.setToken(token);
      await findMembers();
    } on DioException catch (e) {
      isAuthenticated.value = false;
      switch (e.type) {
        case DioExceptionType.connectionError:
          print(e.message ?? "연결 오류가 발생했습니다.");
          break;
        default:
          print(e.message ?? e.toString());
      }
      print("`login()` 호출 중 DioException 발생: $e\n");
    } on Exception catch (e) {
      isAuthenticated.value = false;
      print("`login()` 호출 중 Exception 발생: $e\n");
    }
  }

  Future<void> findMembers() async {
    String token = PrefUtils.storage.getToken();
    final api = wegooli.getTeamAccountConnectionControllerApi();
    print('token : $token');
    final response = await api.selectTeamAccountList();
    print('response : $response');
    List<TeamAccountConnectionResponse>? teams = response.data;
    if (teams != null && teams.isNotEmpty) {
      // NOTE: 현재는 Team이 1개만 존재한다고 가정하기 때문에 첫번째 Team 정보로만 연결한다.
      teams.first.account
          ?.forEach((it) => !members.contains(it) ? members.add(it) : null);
    }
    print('members : ${members.toString()}');
  }

  void logOut() {
    wegooli.getUserControllerApi().logOut();
  }
}
