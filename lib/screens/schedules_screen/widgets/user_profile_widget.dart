// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';

// 🌎 Project imports:
import '../models/userprofile_item_model.dart';
import '/theme/app_decoration.dart';
import '/theme/text_styles.dart';
import '/widgets/image_view.dart';

String imagePathPrefix = 'http://13.209.6.245:3333';

// ignore: must_be_immutable
class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget(
    this.userProfile, {
    super.key,
  });

  final ProfileModel userProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105.w,
      height: 80.h,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: 50.r,
          width: 50.r,
          margin: const EdgeInsets.only(bottom: 3),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: fromCssColor(userProfile.personalColor!.value),
            borderRadius: BorderRadiusStyle.circleBorder32,
          ),
          child: customAvatar(
            imagePathPrefix + userProfile.avatarImagePath!.value,
            size: 42.r,
            radius: BorderRadiusStyle.circleBorder32,
            alignment: Alignment.center,
          ),
        ),
        Text(
          userProfile.name!.value, // '일이삼사오육칠팔',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center, // left -> center
          style: AppTextStyle(
            fontSize: TextSize.xs,
            lineHeight: Leading.normal,
            letterSpacing: LetterSpacing.tighter,
          ),
        )
      ]),
    );
  }
}
