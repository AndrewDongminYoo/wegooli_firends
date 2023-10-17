// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/unsubscribe_confirm_controller.dart';

// ignore_for_file: must_be_immutable
class UnsubscribeConfirmDialog extends StatelessWidget {
  UnsubscribeConfirmDialog(this.controller, {Key? key}) : super(key: key);

  UnsubscribeConfirmController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 267.v),
            decoration: BoxDecoration(
                color: defaultColors.onPrimaryContainer,
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.h, top: 21.v, right: 25.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('구독 해지 예약',
                                style: textTheme.titleMedium!.copyWith(
                                  fontSize: 18.fSize,
                                )),
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                                onTap: Get.back)
                          ])),
                  Container(
                      width: 278.h,
                      margin:
                          EdgeInsets.only(left: 25.h, top: 38.v, right: 25.h),
                      child: Text(
                          '해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: textTheme.bodyLarge!.copyWith(height: 1.50))),
                  SizedBox(height: 20.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomElevatedButton(
                        width: 164.h,
                        text: '취소',
                        buttonStyle: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFB9BCC3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                10.h,
                              ),
                            ),
                          ),
                        ),
                        buttonTextStyle: textTheme.titleMedium),
                    CustomElevatedButton(
                        width: 164.h,
                        text: '해지하기',
                        buttonStyle: ElevatedButton.styleFrom(
                          backgroundColor: defaultColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(
                                10.h,
                              ),
                            ),
                          ),
                        ),
                        buttonTextStyle: textTheme.titleMedium)
                  ])
                ])));
  }
}
