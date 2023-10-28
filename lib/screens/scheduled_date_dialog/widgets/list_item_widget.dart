// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/list_item_model.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
    this.listItem, {
    super.key,
  });

  final ListItemModel listItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightTheme.onPrimaryContainer,
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: lightTheme.onPrimaryContainer,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2.w,
              blurRadius: 2.w,
              offset: const Offset(2, 2),
            ),
          ],
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75.h,
              width: 9.w,
              decoration: BoxDecoration(
                color: lightTheme.primary,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10.w),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  top: 15.h,
                  bottom: 15.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        listItem.value!.value,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '8/16 (수) 15:20 ~ 8/17(목) 14:00',
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            customIcon(
              Assets.svg.icoMenuVertical.path,
              size: 18.w,
              margin: EdgeInsets.only(
                left: 27.w,
                top: 6.h,
                bottom: 51.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
