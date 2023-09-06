// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

/// true로 설정하면 앱에서 리캡차 대신 SMS MFA에 대한
/// 자동 인증을 사용할 수 있도록 알림 권한을 요청합니다.
const withSilentVerificationSMSMFA = true;

/// 현재 인증 세션의 모드([AuthMode.login] 또는 [AuthMode.register] 중 하나)입니다.
// ignore: public_member_api_docs
enum AuthMode { login, register }

/// Firebase를 사용한 다양한 로그인 흐름에 대한 엔트리포인트 예제입니다.
class LoginWithIdAndPassword extends StatefulWidget {
  const LoginWithIdAndPassword({super.key});

  @override
  State<LoginWithIdAndPassword> createState() => _LoginWithIdAndPasswordState();
}

class _LoginWithIdAndPasswordState extends State<LoginWithIdAndPassword> {
  UserController controller = UserController.to;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool get isAuthenticated => controller.isAuthenticated.value;
  @override
  void initState() {
    super.initState();
    if (withSilentVerificationSMSMFA && !kIsWeb) {
      FirebaseMessaging messaging = FirebaseMessaging.instance;
      messaging.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
            alignment: Alignment.center,
            padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FriendsByWegooli(),
                    CustomTextFormField(
                        controller: controller.username,
                        textInputType: TextInputType.emailAddress,
                        margin: getMargin(top: 40),
                        contentPadding:
                            getPadding(left: 12, top: 14, right: 12, bottom: 14),
                        textStyle: CustomTextStyles.bodyLargeGray50003,
                        hintText: l10ns.id,
                        hintStyle: CustomTextStyles.bodyLargeGray50003,
                        textInputAction: TextInputAction.next,
                        filled: true,
                        autofillHints: const [AutofillHints.email],
                        validator: (value) =>
                            value != null && value.isNotEmpty
                                ? null
                                : '필수 입력 항목입니다.',
                        autofocus: true,
                        fillColor: theme.colorScheme.onPrimaryContainer),
                    Obx(() => CustomTextFormField(
                        controller: controller.password,
                        margin: getMargin(top: 12),
                        contentPadding:
                            getPadding(left: 12, top: 14, right: 12, bottom: 14),
                        textStyle: CustomTextStyles.bodyLargeGray50003,
                        hintText: l10ns.password,
                        obscureText: controller.isShowPassword.isFalse,
                        hintStyle: CustomTextStyles.bodyLargeGray50003,
                        fillColor: theme.colorScheme.onPrimaryContainer,
                        suffix: Container(
                            margin: getMargin(
                                left: 30, top: 12, right: 10, bottom: 12),
                            child: CustomImageView(
                                svgPath: controller.isShowPassword.value
                                    ? Assets.svg.imgEyeOpened.path
                                    : Assets.svg.imgEyeCrossedOut.path,
                                onTap: () {
                                  controller.isShowPassword.toggle();
                                })),
                        suffixConstraints:
                            BoxConstraints(maxHeight: getVerticalSize(48)),
                        filled: true,
                        validator: (value) =>
                            value != null && value.isNotEmpty
                                ? null
                                : '필수 입력 항목입니다.',
                        )),
                    CustomElevatedButton(
                        text: l10ns.signIn,
                        margin: getMargin(top: 30),
                        buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(double.maxFinite, getVerticalSize(52)))),
                        buttonTextStyle: CustomTextStyles.titleMedium18,
                        onTap: onSubmit),
                    Padding(
                        padding: getPadding(top: 57),
                        child: Text(l10ns.youHaveNoAccount,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge!.copyWith(
                                letterSpacing: getHorizontalSize(0.03)))),
                    CustomElevatedButton(
                        text: l10ns.signUp,
                        width: double.infinity,
                        margin: getMargin(top: 11, bottom: 5),
                        buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(double.maxFinite, getVerticalSize(52)))),
                        buttonTextStyle: CustomTextStyles.titleMedium18,
                        onTap: () {
                          // 해당 탭은 dialog로 변경 예정
                          // onTapSignUpAcceptTerms();
                          goPhoneAuth();
                        },
                        ),
                  ],
                ),
              ),
            )),
      )),
    );
  }

  void onSubmit() async {
    try {
    await controller.authorize();
    if (isAuthenticated) {
      goSharedSchedule();
    } else {
      controller.username.clear();
      controller.password.clear();
      }
    } on Exception catch (e) {
      print('[WARNING] Unable to complete login process on UI.\n$e');
    }
  }
}
