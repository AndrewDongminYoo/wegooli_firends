// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class TelecomDropdown extends StatelessWidget {
  const TelecomDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    final telecoms = [
      DropdownData(id: 01, title: 'KT', value: MobileCarrier.KT),
      DropdownData(id: 02, title: 'LG U+', value: MobileCarrier.LGU),
      DropdownData(id: 03, title: 'SKT', value: MobileCarrier.SKT),
      DropdownData(id: 04, title: 'LG헬로모바일', value: MobileCarrier.HELLO),
      DropdownData(id: 05, title: '티플러스', value: MobileCarrier.KCT),
      DropdownData(id: 06, title: 'SK7모바일', value: MobileCarrier.SK7),
    ];
    return CustomDropDown(
        width: 128.h,
        icon: Icon(Icons.arrow_drop_down, color: appTheme.gray50003, size: 14),
        hintText: l10ns.telecomCarrier,
        margin: getMargin(top: 4),
        items: telecoms,
        filled: true,
        textStyle: CustomTextStyles.bodyLargeGray500,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, right: 5, top: 14, bottom: 14),
        onChanged: (DropdownData? value) {
          if (value != null) {
            telecoms.onSelected(value);
            controller.telecom = value.title;
          }
        });
  }
}

enum MobileCarrier {
  KT, // KT엠모바일
  LGU, // LG U+
  SKT, // SKT
  HELLO, // LG헬로모바일
  KCT, // 티플러스
  SK7, // SK7모바일
}
