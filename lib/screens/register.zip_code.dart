// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterZipCode extends StatefulWidget {
  const RegisterZipCode({super.key});

  @override
  State<RegisterZipCode> createState() => _RegisterZipCodeState();
}

class _RegisterZipCodeState extends State<RegisterZipCode> {
  final controller = UserController.to;
  @override
  Widget build(BuildContext context) {
    controller.mode = AuthMode.register;

    /// [build] 메소드 내 생성된 [TextEditingController]는 [dispose()]를 호출할 필요가 없습니다.
    /// 위젯을 리빌드할 때마다 처음부터 다시 생성되어, 메모리 누수나 지속적인 참조에 대해 걱정할 필요가 없습니다.
    final code = TextEditingController();
    final add1 = TextEditingController();
    final add2 = TextEditingController();
    final pass = TextEditingController();
    final nick = TextEditingController();
    final emailFocus = FocusNode();
    final add2Focus = FocusNode();
    final passFocus1 = FocusNode();
    final passFocus2 = FocusNode();
    final completed = FocusNode();
    final nickFocus = FocusNode();

    /// 이 프레임이 끝날 때 콜백을 예약합니다.
    /// 등록된 콜백은 현재 프레임이 끝날 때, 추가된 순서대로(언제든 가능), 정확히 한 번만 호출됩니다.
    /// See: [SchedulerBinding.scheduleFrameCallback].
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.postCode = code.text;
      controller.primaryAddress = add1.text;
      controller.detailAddress = add2.text;
      controller.nickname = nick.text;
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.signUp),
      body: Unfocused(
        child: SingleChildScrollView(
            padding: getPadding(horizontal: 16, vertical: 22),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Padding(
                    padding: getPadding(right: 4),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomInputLabel(labelText: l10ns.homeAddress),
                          PostCodeFormField(
                            handler: code,
                            controller: controller,
                          ),
                        ]),
                  ),
                ),
                Expanded(
                    child: PostCodeSearchButton(
                        code: code, address: add1, controller: controller)),
              ]),
              PrimaryAddressFormField(
                handler: add1,
                controller: controller,
              ),
              DetailAddressFormField(
                handler: add2,
                focusNode: add2Focus,
                nextFocus: emailFocus,
                controller: controller,
              ),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.id),
                        UserMailFormField(
                            focusNode: emailFocus,
                            nextFocus: passFocus1,
                            controller: controller),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.password),
                        PasswordFormField(
                            focusNode: passFocus1,
                            nextFocus: passFocus2,
                            controller: controller),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.confirmPassword),
                        PasswordConfirmFormField(
                          handler: pass,
                          focusNode: passFocus2,
                          nextFocus: nickFocus,
                          controller: controller,
                        ),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.nickname),
                        NickNameFormField(
                          handler: nick,
                          focusNode: nickFocus,
                          nextFocus: completed,
                          controller: controller,
                        ),
                      ])),
            ])),
      ),
      bottomNavigationBar:
          SignUpFilledInButton(focusNode: completed, controller: controller),
    );
  }
}
