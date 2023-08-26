import '../controller/smart_key_available_controller.dart';
import '../models/dooropener_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';

// ignore: must_be_immutable
class DooropenerItemWidget extends StatelessWidget {
  DooropenerItemWidget(
    this.dooropenerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DooropenerItemModel dooropenerItemModelObj;

  var controller = Get.find<SmartKeyAvailableController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(130),
      width: getSize(130),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: getPadding(
                all: 5,
              ),
              decoration: AppDecoration.shadow.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder65,
              ),
              child: Container(
                height: getSize(120),
                width: getSize(120),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(60),
                  ),
                  border: Border.all(
                    color: appTheme.blueGray30033,
                    width: getHorizontalSize(1),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 42,
                right: 42,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgUnlocked,
                    height: getSize(46),
                    width: getSize(46),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Obx(
                      () => Text(
                        dooropenerItemModelObj.Txt.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
