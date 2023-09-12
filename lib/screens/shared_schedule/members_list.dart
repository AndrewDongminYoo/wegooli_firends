// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MembersList extends StatelessWidget {
  const MembersList({super.key, required this.controller});
  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16, top: 12),
        child: SizedBox(
            height: getVerticalSize(100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StreamBuilder<TeamAccountModel>(
                    stream: Stream.fromIterable(controller.members),
                    builder: (_, snapshot) {
                      final currentUser = controller.currentUser.value;
                      final member = snapshot.data;
                      if (member == null ||
                          currentUser.id == member.accountId) {
                        return Container();
                      } else {
                        return MemberAvatar(
                            name: member.nickname ?? '-',
                            avatarImagePath: Assets.images.imgAvatar2.path,
                            personalColor: member.color ?? '#FFCC08');
                      }
                    }),
                InviteTeamButton(),
              ],
            )));
  }
}
