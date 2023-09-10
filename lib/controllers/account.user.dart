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

  SelectionPopupModel? phoneCarriers;
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
      final result = response.data?.result;
      var bearerToken = '';
      var token = '';
      if (result == null || result.token == null) {
        print('`login()` 반환값: $result, ${response.data?.resultCode}');
        await Get.dialog(Center(
            child: Assets.lotties.xInCircle.lottie(height: 250, width: 250)));
        isAuthenticated.value = false;
        throw CustomException('로그인 실패');
      } else {
        bearerToken = result.token!;
        // BEARER prefix 분리.
        token = bearerToken.split(' ').last;
      }
      print('token: $token');
      // BEARER prefix 제거
      final payload = JwtDecoder.decode(token);
      //'{"name": "My Awesome App", "iat": 1548094400}'
      print('payload: $payload');
      if (!JwtDecoder.isExpired(token)) {
        currentUser.value = User.fromJson(payload);
        print('✅ 유효한 토큰입니다.');
        isAuthenticated.value = true;
        await PrefUtils.setToken(token);
        await findMembers();
        return;
      } else {
        print('❌ 만료된 토큰입니다.');
        isAuthenticated.value = false;
      }
    } on DioException catch (e) {
      isAuthenticated.value = false;
      print(switch (e.type) {
        DioExceptionType.connectionError => e.message ?? '연결 오류가 발생했습니다.',
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
          'message: ${e.message}\nerror: ${e.error}\nresponseData: ${e.response?.data}',
      });
      print('`login()` 호출 중 DioException 발생: $e\n');
    } on Exception catch (e) {
      isAuthenticated.value = false;
      print('`login()` 호출 중 Exception 발생: $e\n');
    }
  }

  Future<void> findMembers() async {
    final api = wegooli.getTeamAccountConnectionControllerApi();
    if (currentUser.value.id == null) {
      return;
    }
    final response = await api.selectTeamAccountList(
        accountId: currentUser.value.id, isLeaved: 'false');
    print('findMembers : $response');
    final teamList = response.data;

    if (teamList != null && teamList.isNotEmpty) {
      teams(teamList);
      // NOTE: 현재는 Team이 1개만 존재한다고 가정하기 때문에 첫번째 Team 정보로만 연결한다.
      // teams.first.account
      //     ?.forEach((it) => !members.contains(it) ? members.add(it) : null);
      final accountList = teams.first.account;
      if (accountList != null && accountList.isNotEmpty) {
        members(teams.first.account!
            // .where((member) => currentUser.value.id! != member.accountId)
            .toList());
        // print('findMembers : ${teams.first.account}');
      }
    }
    print('members : $members');
  }

  Future<bool> logOut() async {
    final response = await wegooli.getUserControllerApi().logOut();
    return response.data == 'logOut';
  }

  Future<bool> signOut() async {
    final response =
        await wegooli.getUserControllerApi().signOut(id: currentUser.value.id!);
    return response.data!;
  }

  int? getTeamSeq() {
    return teams.firstOrNull?.teamSeq;
  }

  Future<List<Schedule>> retrieveSchedules() async {
    if (teams.isEmpty) {
      return List.empty();
    }
    final teamSeq = getTeamSeq();
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
              highlightColor: it.highlightColor,
            ))
        .toList();
  }

  Future<void> deleteSchedule(int seq) {
    return wegooli.getScheduleControllerApi().deleteSchedule(seq: seq);
  }
}

extension on ScheduleModel {
  Color get highlightColor {
    if (accountId == null) {
      return AppStyledPaint.carStatusNormal;
    } else {
      final color = UserController.to._members
          .firstWhere((element) => element.accountId == accountId)
          .color;
      return Color(int.parse(colorFromHex(color!).toString(), radix: 16));
    }
  }
}
