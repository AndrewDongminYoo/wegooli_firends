// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_switch.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '내 정보')),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse2,
                                height: 65.adaptSize,
                                width: 65.adaptSize,
                                radius: BorderRadius.circular(32.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 11.v, bottom: 11.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('닉네임',
                                          style:
                                              textTheme.titleMedium!.copyWith(
                                            fontSize: 18.fSize,
                                          )),
                                      SizedBox(height: 5.v),
                                      Text('010-1234-5678',
                                          style: textTheme.bodySmall!.copyWith(
                                            color: lightTheme.onPrimary
                                                .withOpacity(0.4),
                                          ))
                                    ])),
                            const Spacer(),
                            CustomOutlinedButton(
                                width: 75.h,
                                text: '프로필 변경',
                                margin:
                                    EdgeInsets.only(top: 18.v, bottom: 19.v))
                          ])),
                  SizedBox(height: 20.v),
                  Container(
                      height: 8.v,
                      width: double.maxFinite,
                      decoration:
                          const BoxDecoration(color: Color(0xFFF6F7F7))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 21.v),
                          child: Text('가입 정보',
                              style: textTheme.titleMedium!.copyWith(
                                fontSize: 18.fSize,
                              )))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 14.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('개인정보 변경', style: textTheme.bodyLarge),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 18.adaptSize,
                                width: 18.adaptSize)
                          ])),
                  SizedBox(height: 21.v),
                  Container(
                      height: 8.v,
                      width: double.maxFinite,
                      decoration:
                          const BoxDecoration(color: Color(0xFFF6F7F7))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 21.v),
                          child: Text('알림',
                              style: textTheme.titleMedium!.copyWith(
                                fontSize: 18.fSize,
                              )))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 14.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('앱 푸시 수신 동의',
                                style: textTheme.bodyLarge!.copyWith(
                                  color: Colors.black,
                                )),
                            Obx(() => CustomSwitch(
                                value: controller.isSelectedSwitch.value,
                                onChange: (value) {
                                  controller.isSelectedSwitch.value = value;
                                }))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 23.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('메일 수신 동의',
                                style: textTheme.bodyLarge!.copyWith(
                                  color: Colors.black,
                                )),
                            Obx(() => CustomSwitch(
                                value: controller.isSelectedSwitch1.value,
                                onChange: (value) {
                                  controller.isSelectedSwitch1.value = value;
                                }))
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 23.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('SMS 수신 동의',
                                style: textTheme.bodyLarge!.copyWith(
                                  color: Colors.black,
                                )),
                            Obx(() => CustomSwitch(
                                value: controller.isSelectedSwitch2.value,
                                onChange: (value) {
                                  controller.isSelectedSwitch2.value = value;
                                }))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 270.h,
                          margin: EdgeInsets.only(
                              left: 16.h, top: 22.v, right: 74.h),
                          child: Text(
                              '· 선택 항목에 동의하지 않아도 서비스 이용은 가능합니다.\n· 수신을 거부하시면 이벤트 관련 안내를 받을 수 없습니다.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.bodySmall!.copyWith(
                                  color: lightTheme.onPrimary.withOpacity(0.4),
                                  height: 1.50)))),
                  SizedBox(height: 21.v),
                  Container(
                      height: 8.v,
                      width: double.maxFinite,
                      decoration:
                          const BoxDecoration(color: Color(0xFFF6F7F7))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 22.v, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('앱 버전',
                                style: textTheme.titleMedium!.copyWith(
                                  fontSize: 18.fSize,
                                )),
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text('1.01', style: textTheme.bodyLarge))
                          ])),
                  SizedBox(height: 21.v),
                  Container(
                      height: 8.v,
                      width: double.maxFinite,
                      decoration:
                          const BoxDecoration(color: Color(0xFFF6F7F7))),
                  CustomElevatedButton(
                      text: '로그아웃',
                      margin:
                          EdgeInsets.only(left: 16.h, top: 20.v, right: 16.h)),
                  SizedBox(height: 21.v),
                  Text('회원 탈퇴',
                      style: textTheme.bodySmall!.copyWith(
                        color: lightTheme.onPrimary.withOpacity(0.4),
                      )),
                  SizedBox(height: 1.v),
                  SizedBox(
                      width: 45.h,
                      child:
                          Divider(color: lightTheme.onPrimary.withOpacity(0.4)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
