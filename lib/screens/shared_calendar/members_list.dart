// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class MembersList extends StatelessWidget {
  const MembersList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return Padding(
        padding: getPadding(left: 16, top: 12),
        child: SizedBox(
            height: 100.v,
            child: Row(
              children: [
                StreamBuilder<TeamAccountModel>(
                    stream: Stream.fromIterable(controller.members),
                    builder: (_, snapshot) {
                      final currentUser = controller.currentUser;
                      final member = snapshot.data;
                      if (member == null ||
                          currentUser.id == member.accountId) {
                        return Container();
                      } else {
                        return MemberAvatar(
                            name: member.nickname ?? '-',
                            avatarImagePath: Assets.images.placeholder02.path,
                            personalColor: member.color ?? '#FFCC08');
                      }
                    }),
                InviteTeamButton(),
              ],
            )));
  }
}
