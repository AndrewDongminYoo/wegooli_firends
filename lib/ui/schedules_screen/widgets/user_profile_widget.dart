// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../controller/schedules_controller.dart';
import '../models/userprofile_item_model.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class UserProfileWidget extends StatelessWidget {
  UserProfileWidget(
    this.userprofileItem, {
    super.key,
  });

  ProfileModel userprofileItem;

  SchedulesController controller = SchedulesController.to;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Column(
        children: [
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: BoxDecoration(
              color: lightTheme.primary,
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: customAvatar(
              Assets.images.placeholder.path,
              size: 42.adaptSize,
              radius: BorderRadius.circular(
                21.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              userprofileItem.userName!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
