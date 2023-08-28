// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/shared_schedule/shared_schedule.dart';

class MembersList extends StatelessWidget {
  const MembersList({
    super.key,
    required this.controller,
  });

  final TeamScheduleController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16, top: 12),
        child: Row(children: [
          MemberAvatar(
              name: '홍길동',
              avatarImagePath: Assets.images.imgAvatar2.path,
              personalColor: '#FFCC08'),
          MemberAvatar(
              name: '김영희',
              avatarImagePath: Assets.images.imgAvatar3.path,
              personalColor: '#FF7134'),
          MemberAvatar(
              name: '김희영',
              avatarImagePath: Assets.images.imgAvatar1.path,
              personalColor: '#7951EA')
        ]));
  }
}
