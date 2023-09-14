// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MemberAvatar extends StatelessWidget {
  const MemberAvatar({
    super.key,
    required this.name,
    required this.avatarImagePath,
    required this.personalColor,
  });
  final String name;
  final String avatarImagePath;
  final String personalColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(71),
      // width: getHorizontalSize(50),
      child: Column(children: [
        Container(
          height: getSize(50),
          width: getSize(50),
          margin: getMargin(bottom: 3),
          alignment: Alignment.center,
          // padding: getPadding(all: 4),
          decoration: AppDecoration.fillDeepPurple.copyWith(
            color: ColorUtils.stringToColor(personalColor),
            borderRadius: BorderRadius.circular(32),
          ),
          child: CustomImageView(
              imagePath: avatarImagePath,
              height: getSize(42),
              width: getSize(42),
              radius: BorderRadius.circular(32),
              alignment: Alignment.center),
        ),
        Text(
          name,
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
      ]),
    );
  }
}
