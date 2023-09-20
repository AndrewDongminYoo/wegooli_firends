// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseIssuedYearDropdown extends StatelessWidget {
  const LicenseIssuedYearDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LicenseController.to;
    return CustomDropDown(
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: '11',
        margin: getMargin(left: 4, top: 27),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: issuedYears,
        initialValue: controller.issuedYear,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          issuedYears.onSelected(value);
          controller.issuedYear = value;
        });
  }
}
