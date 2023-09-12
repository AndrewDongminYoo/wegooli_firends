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
      surfaceTintColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: CustomImageView(
                svgPath: Assets.svg.imgCloseBtn.path,
                width: getHorizontalSize(15),
                height: getVerticalSize(15),
                onTap: () => Navigator.pop(context),
              )),
          Text(
            l10ns.scheduleAnUnsubscribe,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.titleMedium18.copyWith(
              letterSpacing: getHorizontalSize(0.04),
            ),
          ),
        ],
      ),
      titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.pretendard),
      content: Container(
          width: getHorizontalSize(307),
          padding: getPadding(all: 0),
          margin: getMargin(all: 0),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: getHorizontalSize(278),
                    margin: getMargin(left: 25, top: 15, right: 25),
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
