// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../view_scheduled_date_scheduler_only_dialog/widgets/listview_item_widget.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';
import 'controller/view_scheduled_date_scheduler_only_controller.dart';

// ignore_for_file: must_be_immutable
class ViewScheduledDateSchedulerOnlyDialog extends StatelessWidget {
  ViewScheduledDateSchedulerOnlyDialog(this.controller, {Key? key})
      : super(key: key);

  ViewScheduledDateSchedulerOnlyController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 238.v),
        padding: EdgeInsets.all(20.h),
        decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: Assets.svg.imgClose.path,
              height: 15.adaptSize,
              width: 15.adaptSize,
              alignment: Alignment.centerRight,
              onTap: Get.back,
            ),
            SizedBox(height: 6.v),
            Text('일정 확인',
                style: textTheme.titleMedium!.copyWith(
                  fontSize: 18.fSize,
                )),
            SizedBox(height: 22.v),
            Obx(() => ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.v);
                },
                itemCount: controller.viewScheduledDateSchedulerOnly.value
                    .listviewItemList.value.length,
                itemBuilder: (context, index) {
                  final model = controller.viewScheduledDateSchedulerOnly.value
                      .listviewItemList.value[index];
                  return ListviewItemWidget(model);
                })),
            SizedBox(height: 10.v)
          ],
        ),
      ),
    );
  }
}
