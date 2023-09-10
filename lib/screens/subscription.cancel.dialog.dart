// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UnsubscriptionConfirmWarnDialog extends SimpleDialog {
  const UnsubscriptionConfirmWarnDialog({super.key, required this.controller});

  final VehicleController controller;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: Container(
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
                          Text(
                            l10ns.scheduleAnUnsubscribe,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMedium18.copyWith(
                              letterSpacing: getHorizontalSize(0.04),
                            ),
                          ),
                          CustomImageView(
                              svgPath: Assets.svg.imgCloseGray400Round.path,
                              height: getSize(15),
                              width: getSize(15),
                              margin: getMargin(top: 3, bottom: 3),
                              onTap: goBack),
                        ])),
                Container(
                    width: getHorizontalSize(278),
                    margin: getMargin(left: 25, top: 38, right: 25),
                    child: Text(
                      l10ns.youCanCancelAnytime,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        letterSpacing: getHorizontalSize(0.03),
                      ),
                    )),
                Padding(
                    padding: getPadding(top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CancelButton(plural: true),
                          UnsubscribeButton(
                              controller: controller, plural: true),
                        ])),
              ])),
    );
  }
}
