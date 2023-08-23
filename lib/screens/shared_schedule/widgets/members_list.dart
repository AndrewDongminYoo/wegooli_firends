// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
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
      padding: getPadding(
        left: 16,
        top: 12,
      ),
      child: Row(
        children: controller.members.map((user) {
          return MemberAvatar(
            name: user.name ?? '김철수',
            avatarImagePath: Assets.images.imgAvatar1.path,
            personalColor: user.color?.toColor(),
          );
        }).toList(),
      ),
    );
  }
}
