// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MembersList extends StatelessWidget {
  const MembersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16, top: 12),
        child: Row(children: [
          MemberAvatar(
              name: l10ns.name2,
              avatarImagePath: Assets.images.imgAvatar2.path,
              personalColor: '#FFCC08'),
          MemberAvatar(
              name: l10ns.name3,
              avatarImagePath: Assets.images.imgAvatar3.path,
              personalColor: '#FF7134'),
          MemberAvatar(
              name: l10ns.name4,
              avatarImagePath: Assets.images.imgAvatar4.path,
              personalColor: '#7951EA')
        ]));
  }
}
