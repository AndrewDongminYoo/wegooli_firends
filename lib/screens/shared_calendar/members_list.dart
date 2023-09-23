// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class MembersList extends StatelessWidget {
  const MembersList({
    super.key,
    required this.controller,
  });
  final ScheduleController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16, top: 12),
        child: SizedBox(
            height: 100.v,
            child: Row(
              children: [
                StreamBuilder<TeamAccountModel>(
                    stream: Stream.fromIterable(controller.members),
                    builder: (_, snapshot) {
                      final currentUser = UserController.to.currentUser;
                      final member = snapshot.data;
                      if (member == null ||
                          currentUser.id == member.accountId) {
                        return const SizedBox.shrink();
                      } else {
                        return MemberAvatar(
                            name: member.nickname ?? '-',
                            avatarImagePath: Assets.images.placeholder02.path,
                            personalColor: member.color ?? '#FFCC08');
                      }
                    }),
                const InviteTeamButton(),
              ],
            )));
  }
}
