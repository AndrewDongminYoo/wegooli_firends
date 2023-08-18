// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class LoginWithIdAndPassword
    extends GetWidget<LoginWithIdAndPasswordController> {
  const LoginWithIdAndPassword({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 58,
            right: 16,
            bottom: 58,
          ),
          child: Column(
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
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    right: 68,
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
              ),
              CustomTextFormField(
                controller: controller.usernameController,
                margin: getMargin(
                  top: 40,
                ),
                contentPadding: getPadding(
                  left: 12,
                  top: 14,
                  right: 12,
                  bottom: 14,
                ),
                textStyle: CustomTextStyles.bodyLargeGray50003,
                hintText: "아이디",
                hintStyle: CustomTextStyles.bodyLargeGray50003,
                textInputAction: TextInputAction.next,
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer,
              ),
              CustomTextFormField(
                controller: controller.passwordController,
                margin: getMargin(
                  top: 12,
                ),
                contentPadding: getPadding(
                  left: 12,
                  top: 14,
                  right: 12,
                  bottom: 14,
                ),
                textStyle: CustomTextStyles.bodyLargeGray50003,
                hintText: "lbl2".tr,
                hintStyle: CustomTextStyles.bodyLargeGray50003,
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer,
              ),
              CustomElevatedButton(
                text: "lbl3".tr,
                margin: getMargin(
                  top: 30,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    52,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleMedium18,
              ),
              Padding(
                padding: getPadding(
                  top: 57,
                ),
                child: Text(
                  "lbl4".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.03,
                    ),
                  ),
                ),
              ),
              CustomElevatedButton(
                text: "lbl5".tr,
                margin: getMargin(
                  top: 11,
                  bottom: 5,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.maxFinite,
                  getVerticalSize(
                    52,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleMedium18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
