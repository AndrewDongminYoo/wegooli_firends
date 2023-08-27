// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SplashLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: getVerticalSize(53),
          leadingWidth: 34,
        ),
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 81,
            top: 169,
            right: 81,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FRIENDS",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.displayMedium!.copyWith(
                  fontFamily: FontFamily.cookieRun,
                  letterSpacing: getHorizontalSize(0.1),
                ),
              ),
              Padding(
                padding: getPadding(
                  right: 3,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "By",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles
                          .titleSmallNanumSquareRoundOnPrimary
                          .copyWith(letterSpacing: getHorizontalSize(0.03)),
                    ),
                    CustomImageView(
                      onTap: () => AlertDialog(title: Text('Hello World!!')),
                      svgPath: Assets.svg.imgWegooliBlueGray900.path,
                      height: getVerticalSize(11),
                      width: getHorizontalSize(53),
                      margin: getMargin(
                        left: 5,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: getVerticalSize(44)),
                width: Get.width,
                child: CustomImageView(
                  onTap: () {
                    Get.toNamed(AppRoutes.validatePhone);
                  },
                  imagePath: Assets.images.imgGooli1.path,
                  height: getVerticalSize(93),
                  width: getHorizontalSize(163),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
