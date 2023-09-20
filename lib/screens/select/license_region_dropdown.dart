// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseRegionDropdown extends StatelessWidget {
  const LicenseRegionDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LicenseController.to;
    return CustomDropDown(
        width: 160.h,
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: l10ns.region,
        margin: getMargin(left: 4, top: 27),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: licenseRegions,
        initialValue: controller.licenseRegion,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          licenseRegions.onSelected(value);
          controller.licenseRegion = value;
        });
  }
}
