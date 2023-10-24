// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import 'controller/schedules_controller.dart';
import 'widgets/user_age_widget.dart';
import 'widgets/user_profile_widget.dart';

class SchedulesScreen extends StatelessWidget {
  const SchedulesScreen({super.key});
  static const routeName = '/schedules';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SchedulesController());
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          title: CustomImageView(svgPath: Assets.svg.imgFriends.path),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            '팀원',
                            style: textTheme.titleMedium!
                                .copyWith(fontSize: TextSize.lg.fSize),
                          ),
                        ),
                        SizedBox(
                          height: 81.v,
                          child: Obx(
                            () => ListView.separated(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 12.v,
                                right: 16.h,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(width: 15.h);
                              },
                              itemCount: controller
                                  .scheduleModel.value.profiles.value.length,
                              itemBuilder: (context, index) {
                                final model = controller
                                    .scheduleModel.value.profiles.value[index];
                                return UserProfileWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Container(
                          height: 8.v,
                          width: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F7F7),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 21.v,
                          ),
                          child: Text(
                            '일정',
                            style: textTheme.titleMedium!
                                .copyWith(fontSize: TextSize.lg.fSize),
                          ),
                        ),
                        CustomElevatedButton(
                          text: '일정 추가 +',
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 12.v,
                            right: 16.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 20.v,
                              right: 15.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.h,
                              vertical: 22.v,
                            ),
                            decoration: BoxDecoration(
                              color: lightTheme.onPrimaryContainer,
                              border: Border.all(
                                color: const Color(0x33A4A8AF),
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    customIcon(
                                      Assets.svg.icoArrowRight.path,
                                      size: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Text(
                                      '2023년 8월',
                                      style: textTheme.titleMedium,
                                    ),
                                    customIcon(
                                      Assets.svg.icoArrowRight.path,
                                      size: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 218.v,
                                  child: Obx(
                                    () => ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                          6.h, 26.v, 10.h, 2.v),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (
                                        context,
                                        index,
                                      ) {
                                        return SizedBox(width: 25.h);
                                      },
                                      itemCount: controller.scheduleModel.value
                                          .ages.value.length,
                                      itemBuilder: (context, index) {
                                        final model = controller.scheduleModel
                                            .value.ages.value[index];
                                        return UserAgeWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
