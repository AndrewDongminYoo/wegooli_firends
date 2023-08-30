// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import 'widgets/confirm_dialog.dart';

class ProfileInfoPage extends StatelessWidget {
  final api = Get.find<WegooliFriends>().getUserControllerApi();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: CustomImageView(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: '개인 정보')),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                // color: Colors.amber,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.amber[600],
                        height: getVerticalSize(105),
                        padding: getPadding(
                            top: 20, bottom: 20, left: 16, right: 16),
                        child: Row(
                          children: [
                            CustomImageView(
                                margin: getMargin(right: 16),
                                imagePath: Assets.images.imgAvatar5.path,
                                height: getSize(65),
                                width: getSize(65),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(40))),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('닉네임',
                                    // overflow: TextOverflow.ellipsis,
                                    // textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.04))),
                                Text('010-1234-5678',
                                    // overflow: TextOverflow.ellipsis,
                                    // textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.03))),
                                Text('abc@gmail.com',
                                    // overflow: TextOverflow.ellipsis,
                                    // textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.03))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(8),
                        width: mediaQueryData.size.width,
                        color: Color.fromRGBO(246, 247, 247, 1),
                      ),
                      Expanded(
                          child: Padding(
                        padding: getPadding(left: 16, right: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomElevatedButton(
                                  text: '로그아웃',
                                  margin: getMargin(top: 30, bottom: 20),
                                  buttonStyle: CustomButtonStyles.fillPrimaryC26
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      getVerticalSize(52)))),
                                  buttonTextStyle:
                                      CustomTextStyles.titleMedium18,
                                  onTap: () {
                                    api.logOut();
                                  }),
                              TextButton(
                                  onPressed: () {
                                    Get.dialog(ConfirmDialog(
                                      title: Text('회원 탈퇴'),
                                      content: Text(
                                          '위굴리 프렌즈의 회원 탈퇴 요청하시겠습니까? 회원 탈퇴는 7일간 진행되며 7일 후엔 완전히 삭제됩니다.'),
                                      cancelText: '취소',
                                      confirmText: '탈퇴',
                                      confirmFunc: () {
                                        // TODO
                                        // globalController로 사용자 정보 옮긴 뒤 해당 id 이용해서 회원 탈퇴 진행.
                                        // api.signout(id: );
                                      },
                                    ));
                                  },
                                  child: Text('회원 탈퇴',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(34, 34, 34, 0.4),
                                          decoration:
                                              TextDecoration.underline))),
                            ]),
                      )),
                    ]))));
  }

  onTabBackButton() {
    Get.back();
  }
}
