// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';
import 'controller/schedules_controller.dart';
import 'datetime_picker_bottom_sheet.dart';
import 'widgets/user_age_widget.dart';
import 'widgets/user_profile_widget.dart';

class SchedulesScreen extends StatelessWidget {
  const SchedulesScreen({super.key});
  static const routeName = '/schedules';

  @override
  Widget build(BuildContext context) {
    final controller = SchedulesController.to;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.h,
          title: CustomImageView(svgPath: Assets.svg.imgFriends.path),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 21.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text(
                            '팀원',
                            style: textTheme.titleMedium!
                                .copyWith(fontSize: TextSize.lg),
                          ),
                        ),
                        SizedBox(
                          height: 81.h,
                          child: Obx(
                            () => ListView.separated(
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 12.h,
                                right: 16.w,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 15.w);
                              },
                              itemCount: controller
                                  .scheduleModel.value.profiles.value.length,
                              itemBuilder: (context, index) {
                                final model = controller
                                    .scheduleModel.value.profiles.value[index];
                                return UserProfileWidget(model);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 21.h),
                        Container(
                          height: 8.h,
                          width: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F7F7),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 21.h,
                          ),
                          child: Text(
                            '일정',
                            style: textTheme.titleMedium!
                                .copyWith(fontSize: TextSize.lg),
                          ),
                        ),
                        CustomElevatedButton(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) =>
                                const DatetimePickerBottomSheet(),
                          ),
                          text: '일정 추가 +',
                          margin: EdgeInsets.only(
                            left: 16.w,
                            top: 12.h,
                            right: 16.w,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15.w,
                              top: 20.h,
                              right: 15.w,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.w,
                              vertical: 22.h,
                            ),
                            decoration: BoxDecoration(
                              color: lightTheme.onPrimaryContainer,
                              border: Border.all(
                                color: const Color(0x33A4A8AF),
                                width: 1.w,
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
                                      Assets.svg.icoArrowLeft.path,
                                      size: 18.w,
                                      margin: EdgeInsets.only(bottom: 1.h),
                                    ),
                                    Text(
                                      '2023년 8월',
                                      style: textTheme.titleMedium,
                                    ),
                                    customIcon(
                                      Assets.svg.icoArrowRight.path,
                                      size: 18.w,
                                      margin: EdgeInsets.only(bottom: 1.h),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 218.h,
                                  child: Obx(
                                    () => ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                          6.w, 26.h, 10.w, 2.h),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 25.w);
                                      },
                                      itemCount: controller.scheduleModel.value
                                          .ages.value.length,
                                      itemBuilder: (context, index) {
                                        final model = controller.scheduleModel
                                            .value.ages.value[index];
                                        return UserAgeWidget(model);
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
