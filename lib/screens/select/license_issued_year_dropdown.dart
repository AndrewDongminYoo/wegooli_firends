// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseIssuedYearDropdown extends StatelessWidget {
  const LicenseIssuedYearDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LicenseController.to;
    final yearOfLicenseIssuance = [
      SelectionPopupModel(id: 11, title: '11'),
      SelectionPopupModel(id: 12, title: '12'),
      SelectionPopupModel(id: 13, title: '13'),
      SelectionPopupModel(id: 14, title: '14'),
      SelectionPopupModel(id: 15, title: '15'),
      SelectionPopupModel(id: 16, title: '16'),
      SelectionPopupModel(id: 17, title: '17'),
      SelectionPopupModel(id: 18, title: '18'),
      SelectionPopupModel(id: 19, title: '19'),
      SelectionPopupModel(id: 20, title: '20'),
      SelectionPopupModel(id: 21, title: '21'),
      SelectionPopupModel(id: 22, title: '22'),
      SelectionPopupModel(id: 23, title: '23'),
      SelectionPopupModel(id: 24, title: '24'),
    ];
    return CustomDropDown(
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: '11',
        margin: getMargin(left: 4, top: 27),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: yearOfLicenseIssuance,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          yearOfLicenseIssuance.onSelected(value);
          controller.firstIssuedYear = value.title;
        });
  }
}
