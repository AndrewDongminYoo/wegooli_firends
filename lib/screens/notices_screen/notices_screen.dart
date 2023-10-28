// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'controller/notices_controller.dart';
import 'widgets/notices_item_widget.dart';

class NoticesScreen extends StatelessWidget {
  const NoticesScreen({super.key});
  static const routeName = '/notices';

  @override
  Widget build(BuildContext context) {
    final controller = NoticesController.to;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.w,
            leading: const GetBackIcon(),
            title: const AppbarTitle(text: '공지사항')),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 15.h,
                ),
                decoration: const BoxDecoration(
                  color: Palette.disabled,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '[공지] 산모퉁이를 돌아 논가 외딴 우물을 홀로 찾아가선',
                      style: textTheme.titleSmall,
                    ),
                    SizedBox(height: 3.h),
                    Text('2023.08.23',
                        style: textTheme.bodySmall!.copyWith(
                          color: Palette.fontBlack66,
                        ))
                  ],
                ),
              ),
              Expanded(
                  child: Obx(() => ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: SizedBox(
                            width: 329.w,
                            child: Divider(
                              height: 1.h,
                              thickness: 1.h,
                              color: Palette.blueGray300,
                            ),
                          ),
                        );
                      },
                      itemCount: controller.notices.value.items.value.length,
                      itemBuilder: (context, index) {
                        final model =
                            controller.notices.value.items.value[index];
                        return NoticesItemWidget(model);
                      })))
            ],
          ),
        ),
      ),
    );
  }
}
