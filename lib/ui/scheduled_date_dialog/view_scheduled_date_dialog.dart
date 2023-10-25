// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';
import 'controller/scheduled_date_controller.dart';
import 'widgets/list_item_widget.dart';

// ignore_for_file: must_be_immutable
class ViewScheduledDateDialog extends StatelessWidget {
  ViewScheduledDateDialog({super.key});

  ScheduledDateController controller = ScheduledDateController.to;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: Container(
        width: mediaQueryData.size.width,
        margin: EdgeInsets.only(
          left: 16.h,
          right: 16.h,
          bottom: 238.v,
        ),
        padding: EdgeInsets.all(20.h),
        decoration: BoxDecoration(
          color: lightTheme.onPrimaryContainer,
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customIcon(
                Assets.svg.icoCloseRound.path,
                size: 15.adaptSize,
                alignment: Alignment.centerRight,
                onTap: GoRouter.of(context).pop,
              ),
              SizedBox(height: 6.v),
              Text('일정 확인',
                  style: textTheme.titleMedium!
                      .copyWith(fontSize: TextSize.lg.fSize)),
              SizedBox(height: 22.v),
              Obx(() => ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10.v);
                  },
                  itemCount:
                      controller.scheduledDate.value.listItems.value.length,
                  itemBuilder: (context, index) {
                    final model =
                        controller.scheduledDate.value.listItems.value[index];
                    return ListItemWidget(model);
                  })),
              SizedBox(height: 10.v)
            ],
          ),
        ),
      ),
    );
  }
}
