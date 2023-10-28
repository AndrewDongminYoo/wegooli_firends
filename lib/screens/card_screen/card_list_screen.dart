// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/screens/card_screen/card_register_screen.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/buttons/radio_button.dart';
import '/widgets/image_view.dart';
import 'controller/card_controller.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});
  static const routeName = '/card_list';

  @override
  Widget build(BuildContext context) {
    final controller = CardController.to;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '카드 등록'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.h),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 5.h,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 1.w),
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
                          height: 18.w,
                          width: 18.w,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13.h,
                      right: 1.w,
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
                          height: 18.w,
                          width: 18.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31.h),
                  CustomElevatedButton(
                    text: '카드 추가',
                    onTap: () => context.goNamed(CardRegisterScreen.routeName),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
