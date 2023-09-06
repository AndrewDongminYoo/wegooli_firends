// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class UnsubscriptionConfirmWarnDialog extends StatelessWidget {
  final vehicleController = VehicleController.to;

   UnsubscriptionConfirmWarnDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(328),
        padding: getPadding(all: 0),
        margin: getMargin(all: 0),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(left: 25, top: 21, right: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(l10ns.scheduleAnUnsubscribe,
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
                              goBack();
                            }),
                      ])),
              Container(
                  width: getHorizontalSize(278),
                  margin: getMargin(left: 25, top: 38, right: 25),
                  child: Text(l10ns.youCanCancelAnytime,
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
                          width: (context.width / 2) - 19,
                          height: 52,
                          text: l10ns.cancel,
                          buttonStyle: CustomButtonStyles.fillGray400B10
                              .copyWith(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft:
                                                  Radius.circular(10)))),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(164),
                                          getVerticalSize(52)))),
                          buttonTextStyle: theme.textTheme.titleMedium!,
                          onTap: () => goBack(),
                        ),
                        CustomElevatedButton(
                            width: (context.width / 2) - 19,
                            height: 52,
                            text: '해지하기',
                            buttonStyle: CustomButtonStyles.fillPrimaryBR10
                                .copyWith(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10)))),
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(164),
                                            getVerticalSize(52)))),
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onTap: () async {
                              await vehicleController.unsubscribe();
                              goUpcomingUnsubscription();
                            })
                      ]))
            ]));
  }
}
