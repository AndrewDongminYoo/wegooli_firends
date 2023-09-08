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

  Rx<UserDto> currentUser = const UserDto().obs;

  RxList<TeamAccountModel> _members = RxList<TeamAccountModel>([]);
  RxList<TeamAccountModel> get members => _members;
  RxList<Schedule> _schedules = RxList<Schedule>.of([]);
  RxList<Schedule> get schedules => _schedules;

  RxList<TeamAccountConnectionResponse> teams =
      RxList<TeamAccountConnectionResponse>([]);
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
    if (phoneCarriers != null && phoneNum.text.isNotEmpty) {
      isWaitingOtpCode.value = true;
      return await showDialog<String>(
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
      Get.showSnackbar(GetSnackBar(title: '번호가 정확하지 않습니다.'));
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
    phoneCarriers = value;
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
    final api = wegooli.getUserControllerApi();
    try {
      print('user.username: ${username.text}\nuser.password: ${password.text}');
      final response =
          await api.login(id: username.text, password: password.text);
      // print('response : $response');
      Result? result = response.data?.result;
      String bearerToken = '';
      String token = '';
      if (result == null || result.token == null) {
        print('`login()` 반환값: $result, ${response.data?.resultCode}');
        Get.dialog(Center(
            child: Assets.lotties.xInCircle.lottie(height: 250, width: 250)));
        isAuthenticated.value = false;
        throw CustomException('로그인 실패');
      } else {
        bearerToken = result.token as String;
        // BEARER prefix 분리.
        token = bearerToken.split(' ').last;
      }
      print('token: $token');
      // BEARER prefix 제거
      Map<String, dynamic> payload = JwtDecoder.decode(token);
      //'{"name": "My Awesome App", "iat": 1548094400}'
      print('payload: $payload');
      currentUser.value = UserDto.fromJson(payload);
      if (JwtDecoder.isExpired(token)) {
        print('❌ 만료된 토큰입니다.');
        isAuthenticated.value = false;

        /// refreshToken API Call!!
      } else {
        print('✅ 유효한 토큰입니다.');
        isAuthenticated.value = true;
        PrefUtils.storage.setToken(token);
        await findMembers();
        return;
      }
    } on DioException catch (e) {
      isAuthenticated.value = false;
      print(switch (e.type) {
        DioExceptionType.connectionError => e.message ?? "연결 오류가 발생했습니다.",
        DioExceptionType.connectionTimeout =>
          e.message ?? '요청 연결이 5000ms보다 오래 걸렸습니다.',
        DioExceptionType.sendTimeout =>
          e.message ?? '요청이 데이터를 전송하는 데 timeout 보다 오래 걸렸습니다.',
        DioExceptionType.receiveTimeout =>
          e.message ?? '데이터를 받는 데 3000ms 보다 오래 걸렸습니다.',
        DioExceptionType.badCertificate =>
          e.message ?? '요청에 잘못된 인가 코드를 사용했습니다.',
        DioExceptionType.badResponse => e.message ?? '요청에서 잘못된 상태 코드를 반환했습니다.',
        DioExceptionType.cancel => e.message ?? '요청이 취소되었습니다.',
        DioExceptionType.unknown =>
          'message: ${e.message}\nerror: ${e.error}\ntrace: ${e.stackTrace}',
      });
      print("`login()` 호출 중 DioException 발생: $e\n");
    } on Exception catch (e) {
      isAuthenticated.value = false;
      print("`login()` 호출 중 Exception 발생: $e\n");
    }
  }

  Future<void> findMembers() async {
    final api = wegooli.getTeamAccountConnectionControllerApi();
    if (currentUser.value.id == null) {
      return;
    }
    final response = await api.selectTeamAccountList(
        accountId: currentUser.value.id!, isLeaved: 'false');
    print('findMembers : $response');
    List<TeamAccountConnectionResponse>? teamList = response.data;

    if (teamList != null && teamList.isNotEmpty) {
      teams(teamList);
      // NOTE: 현재는 Team이 1개만 존재한다고 가정하기 때문에 첫번째 Team 정보로만 연결한다.
      // teams.first.account
      //     ?.forEach((it) => !members.contains(it) ? members.add(it) : null);
      List<TeamAccountModel>? accountList = teams.first.account;
      if (accountList != null && accountList.isNotEmpty) {
        members(teams.first.account!
            // .where((member) => currentUser.value.id! != member.accountId)
            .toList());
        // print('findMembers : ${teams.first.account}');
      }
    }
    print('members : ${members.toString()}');
  }

  Future<bool> logOut() async {
    final response = await wegooli.getUserControllerApi().logOut();
    return response.data == 'logOut';
  }

  Future<bool> signOut() async {
    final response = await wegooli.getUserControllerApi().signOut(id: currentUser.value.id!);
    return response.data == 'success';
  }

  int? getTeamSeq() {
    return teams.firstOrNull?.teamSeq;
  }

  Future<List<Schedule>> retrieveSchedules() async {
    if (teams.isEmpty) {
      return List.empty();
    }
    int? teamSeq = getTeamSeq();
    if (teamSeq == null) {
      return List.empty();
    }
    final response = await wegooli
        .getScheduleControllerApi()
        .selectScheduleList(teamSeq: teamSeq);
    final schedules = response.data;
    if (schedules == null) {
      return List.empty();
    }
    // print('schedules $schedules');
    return schedules
        .map((it) => Schedule(
              accountId: it.accountId!,
              seq: it.seq,
              teamSeq: it.teamSeq,
              delYn: it.delYn,
              startAt: it.startAt,
              endAt: it.endAt,
              createdAt: it.createdAt,
              updatedAt: it.updatedAt,
              highlightColor: getColor(it.accountId!),
            ))
        .toList();
  }

  Color? getColor(String accountId) {
    String? hexColor = members
        .firstWhereOrNull((member) => member.accountId == accountId)
        ?.color;
    // print('accountId $accountId hexColor: $hexColor');
    if (hexColor == null) {
      return null;
    }
    // Color type이 다름
    // return colorFromHex(hexColor).toMaterial(255);
    return Color(int.parse(colorFromHex(hexColor).toString(), radix: 16));
  }
}
