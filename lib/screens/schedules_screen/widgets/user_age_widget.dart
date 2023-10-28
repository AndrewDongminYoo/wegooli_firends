// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/user_age_model.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class UserAgeWidget extends StatelessWidget {
  const UserAgeWidget(
    this.userAgeModel, {
    super.key,
  });

  final UserAgeModel userAgeModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 17.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                userAgeModel.userDay!.value,
                overflow: TextOverflow.ellipsis,
                style: textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 19.h),
          Obx(
            () => Text(
              userAgeModel.userMonth!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall!.tint(const Color(0xFF91959D)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.h,
              right: 3.w,
            ),
            child: Obx(
              () => Text(
                userAgeModel.userYear!.value,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.h,
              right: 1.w,
            ),
            child: Obx(
              () => Text(
                userAgeModel.thirty!.value,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 19.h),
          Obx(
            () => Text(
              userAgeModel.thirtyone!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 18.h),
          Obx(
            () => Text(
              userAgeModel.thirtytwo!.value,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
