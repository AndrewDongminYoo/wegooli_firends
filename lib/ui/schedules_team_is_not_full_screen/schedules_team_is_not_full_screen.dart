// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/ui/schedules_team_is_not_full_screen/widgets/userage_item_widget.dart';
import '/ui/schedules_team_is_not_full_screen/widgets/userprofile_item_widget.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import 'controller/schedules_team_is_not_full_controller.dart';

class SchedulesScreen extends GetWidget<SchedulesController> {
  const SchedulesScreen({super.key});
  static const routeName = '/schedules_team_is_not_full';

  @override
  Widget build(BuildContext context) {
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
                                .copyWith(fontSize: 18.fSize),
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
                              itemCount: controller.scheduleModel.value
                                  .userprofileItemList.value.length,
                              itemBuilder: (context, index) {
                                final model = controller.scheduleModel.value
                                    .userprofileItemList.value[index];
                                return UserprofileItemWidget(
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
                                .copyWith(fontSize: 18.fSize),
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
                                    CustomImageView(
                                      svgPath: Assets.svg.icoArrowLeft.path,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Text(
                                      '2023년 8월',
                                      style: textTheme.titleMedium,
                                    ),
                                    CustomImageView(
                                      svgPath: Assets.svg.icoArrowLeft.path,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
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
                                          .userageItemList.value.length,
                                      itemBuilder: (context, index) {
                                        final model = controller.scheduleModel
                                            .value.userageItemList.value[index];
                                        return UserageItemWidget(
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
