// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MemberListTitle extends StatelessWidget {
  const MemberListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16),
        child: Text(
          l10ns.teamMembers,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.titleMediumBlack900.copyWith(
            letterSpacing: getHorizontalSize(0.04),
          ),
        ));
  }
}
