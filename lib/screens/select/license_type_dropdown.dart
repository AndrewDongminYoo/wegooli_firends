// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseTypeDropdown extends StatelessWidget {
  const LicenseTypeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final licenseTypes = [
      SelectionPopupModel(id: 1, title: '1종 보통면허'),
      SelectionPopupModel(id: 2, title: '2종 보통면허'),
      SelectionPopupModel(id: 3, title: '1종 대형면허'),
      SelectionPopupModel(id: 4, title: '2종 오토면허'),
    ];
    return CustomDropDown(
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: l10ns.pleaseSelectYourLicenseType,
        margin: getMargin(top: 4),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: licenseTypes,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          licenseTypes.onSelected(value);
        });
  }
}
