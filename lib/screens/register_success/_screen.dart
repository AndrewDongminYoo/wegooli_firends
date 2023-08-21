// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class LoginRegisterSuccessPage
    extends GetWidget<LoginRegisterSuccessPageController> {
  const LoginRegisterSuccessPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: Assets.images.imgGooli0.path,
                height: getVerticalSize(
                  109,
                ),
                width: getHorizontalSize(
                  136,
                ),
                alignment: Alignment.centerRight,
                margin: getMargin(
                  right: 87,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  153,
                ),
                margin: getMargin(
                  top: 36,
                ),
                child: Text(
                  "lbl42".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.05,
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl43".tr,
                margin: getMargin(
                  bottom: 11,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    52,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleMedium18,
                onTap: () {
                  onTapTeamScheduleShare();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapTeamScheduleShare() {
    Get.toNamed(
      AppRoutes.sharedSchedule,
    );
  }
}
