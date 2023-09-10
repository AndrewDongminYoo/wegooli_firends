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
    final telecoms = controller.telecoms;
    return CustomDropDown(
        width: getHorizontalSize(104),
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        // `initialValue`가 `true`인 경우 `hintText`는 보이지 않습니다.
        hintText: l10ns.telecomCarrier,
        initialValue: true,
        margin: getMargin(top: 4),
        items: telecoms,
        textStyle: CustomTextStyles.bodyLargeGray500,
        contentPadding: getPadding(left: 10, right: 5, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          controller.setDropdownItem(value);
        });
  }
}
