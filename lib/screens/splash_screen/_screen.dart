// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class SplashLoading extends GetWidget<SplashLoadingController> {
  const SplashLoading({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
                "lbl_friends".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.displayMedium!.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.1,
                  ),
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
                      "lbl_by".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles
                          .titleSmallNanumSquareRoundOnPrimary
                          .copyWith(
                        letterSpacing: getHorizontalSize(
                          0.03,
                        ),
                      ),
                    ),
                    CustomImageView(
                      onTap: () => AlertDialog(
                        title: Text('Hello World!!'),
                      ),
                      svgPath: Assets.svg.imgWegooliTitle.path,
                      height: getVerticalSize(
                        11,
                      ),
                      width: getHorizontalSize(
                        53,
                      ),
                      margin: getMargin(
                        left: 5,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
