// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseTypeDropdown extends StatelessWidget {
  const LicenseTypeDropdown({
    super.key,
    required this.controller,
  });

  final LicenseController controller;

  @override
  Widget build(BuildContext context) {
    return CustomDropDown(
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: l10ns.pleaseSelectYourLicenseType,
        margin: getMargin(top: 4),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: controller.licenseTypes.value,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          controller.licenseTypes.onSelected(value);
        });
  }
}
