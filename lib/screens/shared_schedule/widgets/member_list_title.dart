// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MemberListTitle extends StatelessWidget {
  const MemberListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 16,
      ),
      child: Text(
        "lbl50".tr,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: CustomTextStyles.titleMediumBlack900.copyWith(
          letterSpacing: getHorizontalSize(
            0.04,
          ),
        ),
      ),
    );
  }
}
