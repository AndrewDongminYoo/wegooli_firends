// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class FriendsByWegooli extends StatelessWidget {
  const FriendsByWegooli({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('FRIENDS',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.displayMedium!.copyWith(
                fontFamily: FontFamily.cookieRun, letterSpacing: 0.1.h)),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: getPadding(right: 68),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text('By',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles
                          .titleSmallNanumSquareRoundOnPrimary
                          .copyWith(letterSpacing: 0.03.h)),
                  CustomImageView(
                      svgPath: Assets.svg.imgWegooliBlueGray900.path,
                      fit: BoxFit.fitWidth,
                      height: 11.v,
                      width: 53.h,
                      margin: getMargin(left: 5, bottom: 3)),
                ]))),
      ],
    );
  }
}
