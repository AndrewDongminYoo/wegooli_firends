// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InviteTeamButton extends StatelessWidget {
  InviteTeamButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getVerticalSize(71),
        // width: getHorizontalSize(50),
        child: Column(children: [
          CustomIconButton(
            margin: getMargin(bottom: 3),
            height: getSize(50),
            width: getSize(50),
            // padding: getPadding(all: 13),
            decoration: BoxDecoration(
              color: const Color(0xFFB9BCC3),
              borderRadius: BorderRadius.circular(32),
            ),
            child: CustomImageView(
              svgPath: Assets.svg.imgGrid.path,
              color: ColorConstant.fontColorWhite,
            ),
            onTap: () async {
              await goSendingInvitation(copyMode: true);
            },
          ),
          Text(
            l10ns.invite,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color(0xFF222222),
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
