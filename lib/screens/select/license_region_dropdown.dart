// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseRegionDropdown extends StatelessWidget {
  const LicenseRegionDropdown({
    super.key,
    required this.controller,
  });

  final LicenseController controller;

  @override
  Widget build(BuildContext context) {
    return CustomDropDown(
        width: getHorizontalSize(160),
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: l10ns.region,
        margin: getMargin(top: 4),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: controller.licenseRegions.value,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          controller.licenseRegions.onSelected(value);
        });
  }
}
