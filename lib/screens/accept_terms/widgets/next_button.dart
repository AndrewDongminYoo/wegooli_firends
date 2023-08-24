// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';
import '/core/app_export.dart';

class AcceptTermsNextButton extends GetWidget<AcceptTermsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: CustomElevatedButton(
          text: "동의 완료",
          buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(
                  Size(double.maxFinite, getVerticalSize(52)))),
          buttonTextStyle: CustomTextStyles.titleMedium18,
          onTap: () {
            if (controller.isAllTermsAccepted.value) {
              Get.toNamed(
                AppRoutes.validatePhone,
              );
            }
          },
        ));
  }
}
