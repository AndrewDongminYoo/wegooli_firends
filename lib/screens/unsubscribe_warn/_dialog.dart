// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class UnsubscriptionConfirmWarnDialog extends StatelessWidget {
  UnsubscriptionConfirmWarnDialog(this.controller, {Key? key})
      : super(key: key);

  UnsubscriptionConfirmWarnController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: getHorizontalSize(328),
        decoration: AppDecoration.fill
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(left: 25, top: 21, right: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl94".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMedium18.copyWith(
                                letterSpacing: getHorizontalSize(0.04))),
                        CustomImageView(
                            svgPath: Assets.svg.imgCloseGray400Round.path,
                            height: getSize(15),
                            width: getSize(15),
                            margin: getMargin(top: 3, bottom: 3),
                            onTap: () {
                              onTapImgClose();
                            })
                      ])),
              Container(
                  width: getHorizontalSize(278),
                  margin: getMargin(left: 25, top: 38, right: 25),
                  child: Text("msg11".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(letterSpacing: getHorizontalSize(0.03)))),
              Padding(
                  padding: getPadding(top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                            text: "lbl92".tr,
                            buttonStyle: CustomButtonStyles.fillGray400BL10
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(164),
                                            getVerticalSize(52)))),
                            buttonTextStyle: theme.textTheme.titleMedium!),
                        CustomElevatedButton(
                            text: "lbl85".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryBR10
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(164),
                                            getVerticalSize(52)))),
                            buttonTextStyle: theme.textTheme.titleMedium!)
                      ]))
            ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgClose() {
    Get.back();
  }
}
