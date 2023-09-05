// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class FriendsByWegooli extends StatelessWidget {
  const FriendsByWegooli({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("FRIENDS",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.displayMedium!.copyWith(
                fontFamily: FontFamily.cookieRun,
                letterSpacing: getHorizontalSize(0.1))),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: getPadding(right: 68),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("By",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles
                          .titleSmallNanumSquareRoundOnPrimary
                          .copyWith(letterSpacing: getHorizontalSize(0.03))),
                  CustomImageView(
                      svgPath: Assets.svg.imgWegooliBlueGray900.path,
                      fit: BoxFit.fitWidth,
                      height: getVerticalSize(11),
                      width: getHorizontalSize(53),
                      margin: getMargin(left: 5, bottom: 3)),
                ]))),
      ],
    );
  }
}
