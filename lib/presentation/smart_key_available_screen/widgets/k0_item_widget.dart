import '../controller/smart_key_available_controller.dart';
import '../models/k0_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:wegooli_friends_public/core/app_export.dart';

// ignore: must_be_immutable
class K0ItemWidget extends StatelessWidget {
  K0ItemWidget(
    this.k0ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  K0ItemModel k0ItemModelObj;

  var controller = Get.find<SmartKeyAvailableController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 42,
        top: 29,
        right: 42,
        bottom: 29,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup19053,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgUnlocked,
            height: getSize(46),
            width: getSize(46),
          ),
          CustomImageView(
            svgPath: ImageConstant.img14x39,
            height: getVerticalSize(14),
            width: getHorizontalSize(39),
            margin: getMargin(
              top: 3,
              bottom: 8,
            ),
          ),
        ],
      ),
    );
  }
}
