// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class UnsubscriptionConfirmDialog extends SimpleDialog {
  const UnsubscriptionConfirmDialog({super.key, required this.controller});

  final VehicleController controller;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(left: 25, top: 15, right: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 6),
                            child: Text(
                              l10ns.scheduleAnUnsubscribe,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18.copyWith(
                                letterSpacing: 0.04,
                              ),
                            )),
                        CustomImageView(
                            svgPath: Assets.svg.imgCloseGray400Sharp.path,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: getMargin(bottom: 15),
                            onTap: goBack),
                      ])),
              Container(
                  width: 278.h,
                  margin: getMargin(left: 25, top: 15, right: 25, bottom: 30),
                  child: Text(
                    l10ns.youCanCancelAnytime,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      letterSpacing: 0.03.h,
                    ),
                  )),
              Row(
                children: [
                  const CancelButton(plural: true),
                  UnsubscribeButton(controller: controller, plural: true),
                ],
              )
            ]),
      ),
    );
  }
}
