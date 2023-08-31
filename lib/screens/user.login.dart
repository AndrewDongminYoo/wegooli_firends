// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class LoginWithIdAndPassword extends GetWidget<UserController> {
  bool get isAuthenticated => controller.isAuthenticated.isTrue;
  Future<void> authorize() async {
    final api = WegooliFriends.client.getUserControllerApi();

    try {
      final response = await api.login(
          id: controller.username.text,
          password: controller.password.text);
      print('response : ${response}');
      MapJsonObject? jsonObj = response.data?.result as MapJsonObject;
      if (jsonObj.value.containsKey('token')) {
        String? token = jsonObj.value['token'] as String?;
        if (token != null) {
          List<String> splitToken = token.split(' ');
          print('splitToken: $splitToken[1]');
          PrefUtils.storage.setData('token', splitToken[1]);
          Map<String, dynamic> payload = parseJwtPayLoad(splitToken[1]);
          controller.currentUser.value = (UserDTOBuilder()
                ..email = payload['userEmail']
                ..nickname = payload['userNm']
                ..id = payload['userId']
                ..color = payload['color']
                ..phoneNumber = payload['phoneNumber']
                ..add1 = payload['add1']
                ..add2 = payload['add2']
                ..memberSeq = payload['memberSeq']
                )
              .build();
          controller.isAuthenticated = true.obs;
          await findMembers();
        } else {
          controller.isAuthenticated = false.obs;
        }
      }
      // Logger.log("response : ${response.data?.result?.toString()}");
      // return true;
    } on DioException catch (e) {
      controller.isAuthenticated = false.obs;
      switch (e.type) {
        case DioExceptionType.connectionError:
          print(e.message ?? "Unknown connection error occurred");
          break;
        default:
      }
      print("DioException when calling UserControllerApi->login: $e\n");
    } on Exception catch (e) {
      controller.isAuthenticated = false.obs;
      print("Exception when calling UserControllerApi->login: $e\n");
    } finally {
      // return false;
    }
    // id, pwd 확인해서 로그인 성공하면 true 아니면 false.
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FriendsByWegooli(),
                      CustomTextFormField(
                          controller: controller.username,
                          margin: getMargin(top: 40),
                          contentPadding: getPadding(
                              left: 12, top: 14, right: 12, bottom: 14),
                          textStyle: CustomTextStyles.bodyLargeGray50003,
                          hintText: "아이디",
                          hintStyle: CustomTextStyles.bodyLargeGray50003,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Obx(() => CustomTextFormField(
                          controller: controller.password,
                          margin: getMargin(top: 12),
                          contentPadding: getPadding(
                              left: 12, top: 14, right: 12, bottom: 14),
                          textStyle: CustomTextStyles.bodyLargeGray50003,
                          hintText: l10ns.password,
                          obscureText: controller.isShowPassword.isFalse,
                          hintStyle: CustomTextStyles.bodyLargeGray50003,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: controller.isShowPassword.isTrue
                                      ? Assets.svg.imgEyeOpened.path
                                      : Assets.svg.imgEyeCrossedOut.path,
                                  onTap: () {
                                    controller.isShowPassword.toggle();
                                  })),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer)),
                      CustomElevatedButton(
                          text: l10ns.signIn,
                          margin: getMargin(top: 30),
                          buttonStyle: CustomButtonStyles.fillPrimaryC26
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(double.maxFinite,
                                          getVerticalSize(52)))),
                          buttonTextStyle: CustomTextStyles.titleMedium18,
                          onTap: () async {
                            await authorize();
                            if (isAuthenticated) {
                              onTapTeamScheduleShare();
                            } else {
                              controller.username.text = "";
                              controller.password.text = "";
                            }
                          }),
                      Padding(
                          padding: getPadding(top: 57),
                          child: Text(l10ns.youHaveNoAccount,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                  letterSpacing: getHorizontalSize(0.03)))),
                      CustomElevatedButton(
                          text: l10ns.signUp,
                          margin: getMargin(top: 11, bottom: 5),
                          buttonStyle: CustomButtonStyles.fillPrimaryC26
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(double.maxFinite,
                                          getVerticalSize(52)))),
                          buttonTextStyle: CustomTextStyles.titleMedium18,
                          onTap: () {
                            // 해당 탭은 dialog로 변경 예정
                            // onTapSignUpAcceptTerms();
                            Get.toNamed(AppRoutes.phoneAuth);
                          }),
                    ]))));
  }

  Future findMembers() async {
    String token = PrefUtils.storage.getData('token');
    final api =
        WegooliFriends.client.getTeamAccountConnectionControllerApi();
    print('token : $token');
    Map<String, dynamic> extra = <String, dynamic>{
      'secure': <Map<String, String>>[
        {
          'type': 'http',
          'scheme': 'bearer',
          'name': token,
        },
      ],
    };
    final response = await api.selectTeamAccountList(extra: extra);
    print('response : $response');
    BuiltList<TeamAccountConnectionResponse>? teams = response.data;
    if (teams != null && teams.isNotEmpty) {
      // TODO: 현재는 Team이 1개만 존재한다고 가정하기 때문에 첫번째 Team 정보로만 연결한다.
      teams.first.account?.forEach((it) =>
          !controller.members.contains(it) ? controller.members.add(it) : null);
    }
    // print('members : ${controller.members.length}');
    print('members : ${controller.members.toString()}');
  }

  onTapSignUpAcceptTerms() {
    Get.toNamed(AppRoutes.acceptTerms);
  }

  onTapTeamScheduleShare() {
    Get.toNamed(AppRoutes.sharedSchedule);
  }
}
