// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AcceptTermsNextButton extends GetWidget<AccountAgreementController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: CustomElevatedButton(
            text: l10ns.acceptanceComplete,
            buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(52)))),
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: () {
              if (controller.isAllTermsAccepted.value) {
                Get.toNamed(AppRoutes.phoneAuth);
              }
            }));
  }
}
