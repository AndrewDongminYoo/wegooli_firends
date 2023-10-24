// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/notices_screen/widgets/notices_item_widget.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'controller/notices_controller.dart';

class NoticesScreen extends StatelessWidget {
  const NoticesScreen({super.key});
  static const routeName = '/notices';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NoticesController());
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: const GetBackIcon(),
            title: AppbarTitle(text: '공지사항')),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                decoration: const BoxDecoration(
                  color: Color(0x33FFE142),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '[공지] 산모퉁이를 돌아 논가 외딴 우물을 홀로 찾아가선',
                      style: textTheme.titleSmall,
                    ),
                    SizedBox(height: 3.v),
                    Text('2023.08.23',
                        style: textTheme.bodySmall!.copyWith(
                          color: lightTheme.onPrimary.withOpacity(0.4),
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
                          padding: EdgeInsets.symmetric(vertical: 0.5.v),
                          child: SizedBox(
                            width: 329.h,
                            child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: const Color(0x33A4A8AF),
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
