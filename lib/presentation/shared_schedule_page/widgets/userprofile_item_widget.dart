import '../controller/shared_schedule_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<SharedScheduleController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getSize(50),
            width: getSize(50),
            padding: getPadding(
              all: 4,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse142x42,
              height: getSize(42),
              width: getSize(42),
              radius: BorderRadius.circular(
                getHorizontalSize(21),
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Obx(
              () => Text(
                userprofileItemModelObj.userNameTxt.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
