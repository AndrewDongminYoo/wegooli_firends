// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MembersList extends StatelessWidget {
  final userController = UserController.to;

  MembersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16, top: 12),
        child: Expanded(
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, int index) {
                        final member = userController.members[index];
                        return MemberAvatar(
                            name: member.nickname ?? '-',
                            avatarImagePath: Assets.images.imgAvatar2.path,
                            personalColor: member.color ?? '#FFCC08');
                      },
                      itemCount: userController.members.length,
                      shrinkWrap: true),
                )
              ],
            ),
          ),
        ));
  }
}
