// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class InviteTeamButton extends StatelessWidget {
  InviteTeamButton({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 71.v,
        child: Column(children: [
          CustomIconButton(
            margin: getMargin(bottom: 3),
            height: 50.adaptSize,
            width: 50.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.gray400,
              borderRadius: BorderRadius.circular(32),
            ),
            child: CustomImageView(
              svgPath: Assets.svg.imgGrid.path,
              color: Colors.white,
            ),
            onTap: () async {
              await goSendingInvitation(copyMode: true);
            },
          ),
          Text(
            l10ns.invite,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: ColorConstant.fontBlack,
              fontSize: 12,
              fontFamily: FontFamily.pretendard,
              fontWeight: FontWeight.w400,
              height: 1.50,
              letterSpacing: 0.02,
            ),
          )
        ]));
  }
}
