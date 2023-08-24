// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class RegisterSuccess extends GetWidget<RegisterSuccessPageController> {
  const RegisterSuccess({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: theme.colorScheme.onPrimaryContainer,
          body: Container(
              // width: double.maxFinite,
              padding: getPadding(
                left: 16,
                right: 16,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.imgGooli0.path,
                      height: getVerticalSize(
                        109,
                      ),
                      width: getHorizontalSize(
                        136,
                      ),
                      alignment: Alignment.centerRight,
                      margin: getMargin(
                        right: 87,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        153,
                      ),
                      margin: getMargin(
                        top: 36,
                      ),
                      child: Text(
                        "lbl42".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.05,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: getPadding(top: 27),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("(선택) 초대코드",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.03)))),
                                  ]),
                              Obx(() => CustomTextFormField(
                                  textInputType: TextInputType.emailAddress,
                                  controller: controller.codeController,
                                  margin: getMargin(top: 4),
                                  contentPadding: getPadding(
                                      left: 12, top: 14, right: 12, bottom: 14),
                                  textStyle:
                                      CustomTextStyles.bodyLargeGray50003,
                                  hintText: "초대코드를 입력하세요.",
                                  obscureText: controller.isShowCode.isFalse,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeGray50003,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 12,
                                          right: 10,
                                          bottom: 12),
                                      child: CustomImageView(
                                        svgPath: controller.isShowCode.isTrue
                                            ? Assets.svg.imgEyeOpened.path
                                            : Assets.svg.imgEyeCrossedOut.path,
                                        onTap: () {
                                          controller.isShowCode.toggle();
                                        },
                                      )),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(48)),
                                  filled: true,
                                  fillColor:
                                      theme.colorScheme.onPrimaryContainer)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("리더에게 받은 초대코드를 입력하세요.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallErrorContainer
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.04))),
                                  Text("바로 파티에 들어갈 수 있습니다.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallErrorContainer
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.04)))
                                ],
                              ),
                            ])),
                    // Spacer(),
                  ],
                ),
              )),
          bottomNavigationBar: Container(
              margin: getMargin(left: 16, right: 16, bottom: 29),
              child: CustomElevatedButton(
                text: "lbl43".tr,
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(52)))),
                buttonTextStyle: CustomTextStyles.titleMedium18,
                onTap: () {
                  Get.toNamed(
                    AppRoutes.sharedSchedule,
                  );
                },
              ))),
    );
  }
}
