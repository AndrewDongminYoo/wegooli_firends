// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseIssuedYearDropdown extends StatelessWidget {
  const LicenseIssuedYearDropdown({
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
        hintText: '11',
        margin: getMargin(left: 4, top: 27),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: controller.yearOfLicenseIssuance.value,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          controller.yearOfLicenseIssuance.onSelected(value);
        });
  }
}
