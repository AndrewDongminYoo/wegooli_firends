// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/userprofile_item_model.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget(
    this.userProfile, {
    super.key,
  });

  final ProfileModel userProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: Column(
        children: [
          Container(
            height: 50.w,
            width: 50.w,
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
              color: lightTheme.primary,
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: customAvatar(
              Assets.images.placeholder.path,
              size: 42.w,
              radius: BorderRadius.circular(
                21.w,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Text(
              userProfile.userName!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
