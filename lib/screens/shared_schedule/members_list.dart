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
        child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (userController.members.length - 1 > 0)
                  Obx(
                    () => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, int index) {
                          final currentUser = userController.currentUser.value;
                          final member = userController.members
                              .where((it) => currentUser.id != it.accountId)
                              .toList()[index];
                          return MemberAvatar(
                              name: member.nickname ?? '-',
                              avatarImagePath: Assets.images.imgAvatar2.path,
                              personalColor: member.color ?? '#FFCC08');
                        },
                        itemCount: userController.members.length - 1,
                        shrinkWrap: true),
                  ),
                  InviteTeamButton(),
              ],
            )));
  }
}
