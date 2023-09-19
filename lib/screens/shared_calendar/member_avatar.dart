// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

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
      height: 71.v,
      child: Column(children: [
        Container(
          height: 50.adaptSize,
          width: 50.adaptSize,
          margin: getMargin(bottom: 3),
          alignment: Alignment.center,
          decoration: AppDecoration.fillDeepPurple.copyWith(
            color: ColorUtils.stringToColor(personalColor),
            borderRadius: BorderRadius.circular(32),
          ),
          child: CustomImageView(
              imagePath: avatarImagePath,
              height: 42.adaptSize,
              width: 42.adaptSize,
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
