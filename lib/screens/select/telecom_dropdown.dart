// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class TelecomDropdown extends StatelessWidget {
  const TelecomDropdown({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    final telecoms = [
      SelectionPopupModel(id: 01, title: 'SKT'),
      SelectionPopupModel(id: 02, title: 'KT'),
      SelectionPopupModel(id: 03, title: 'LG U+'),
      SelectionPopupModel(id: 04, title: 'SKT 알뜰폰'),
      SelectionPopupModel(id: 05, title: 'KT 알뜰폰'),
      SelectionPopupModel(id: 06, title: 'LG U+ 알뜰폰'),
    ];
    return CustomDropDown(
        width: 128.h,
        icon: Icon(Icons.arrow_drop_down, color: appTheme.gray50003, size: 14),
        // `initialValue`가 `true`인 경우 `hintText`는 보이지 않습니다.
        hintText: l10ns.telecomCarrier,
        initialValue: true,
        margin: getMargin(top: 4),
        items: telecoms,
        filled: true,
        textStyle: CustomTextStyles.bodyLargeGray500,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, right: 5, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          controller.setDropdownItem(value);
        });
  }
}
