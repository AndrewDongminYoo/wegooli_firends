// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/radio_button.dart';
import 'controller/card_list_controller.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});
  static const routeName = '/card_list';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CardListController());
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: AppbarTitle(text: '카드 등록'),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomRadioButton(
                            text: '신한 7210 / 개인',
                            value: '신한 7210 / 개인',
                            groupValue: controller.radioGroup.value,
                            onChange: (value) {
                              controller.radioGroup.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: Assets.svg.icoCloseGray.path,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13.v,
                      right: 1.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomRadioButton(
                            text: '신한 1210 / 개인',
                            value: '신한 1210 / 개인',
                            groupValue: controller.radioGroup1.value,
                            onChange: (value) {
                              controller.radioGroup1.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: Assets.svg.icoCloseGray.path,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(text: '카드 추가'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
