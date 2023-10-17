// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/view_scheduled_date_scheduler_only_controller.dart';
import '../models/listview_item_model.dart';
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListviewItemWidget extends StatelessWidget {
  ListviewItemWidget(
    this.listviewItem, {
    Key? key,
  }) : super(key: key);

  ListviewItemModel listviewItem;

  ViewScheduledDateSchedulerOnlyController controller =
      Get.find<ViewScheduledDateSchedulerOnlyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: defaultColors.onPrimaryContainer,
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: defaultColors.onPrimaryContainer,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: const Offset(
                2,
                2,
              ),
            ),
          ],
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75.v,
              width: 9.h,
              decoration: BoxDecoration(
                color: defaultColors.primary,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10.h),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        listviewItem.value!.value,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      '8/16 (수) 15:20 ~ 8/17(목) 14:00',
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgOverflowmenuvertical,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 27.h,
                top: 6.v,
                bottom: 51.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
