// 🐦 Flutter imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';

class InviteTeamButton extends StatelessWidget {
  const InviteTeamButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 48,
            width: 48,
            padding: getPadding(
              all: 13,
            ),
            child: CustomImageView(
              svgPath: Assets.svg.imgGrid.path,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Text(
              "lbl54".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallBlack900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.02,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
