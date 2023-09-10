// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InviteTeamButton extends StatelessWidget {
  const InviteTeamButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 15),
        child: Column(children: [
          CustomIconButton(
            height: 48,
            width: 48,
            padding: getPadding(all: 13),
            child: CustomImageView(
              svgPath: Assets.svg.imgGrid.path,
              color: const Color(0xFFFFFFFF),
            ),
          ),
          Padding(
              padding: getPadding(top: 6),
              child: Text(
                l10ns.invite,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.bodySmallBlack900.copyWith(
                  letterSpacing: getHorizontalSize(0.02),
                ),
              )),
        ]));
  }
}