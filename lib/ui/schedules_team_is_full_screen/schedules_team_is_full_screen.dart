// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../schedules_team_is_full_screen/widgets/calendar1_item_widget.dart';
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/schedules_team_is_full_controller.dart';

class SchedulesTeamIsFullScreen
    extends GetWidget<SchedulesTeamIsFullController> {
  const SchedulesTeamIsFullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: AppbarImage(
            svgPath: Assets.imgFriends,
          ),
          styleType: Style.bgOutline,
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
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '팀원',
                                    style: textTheme.titleMedium!.copyWith(
                                      fontSize: 18.fSize,
                                    ),
                                  ),
                                  SizedBox(height: 12.v),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                Assets.placeholder,
                                            height: 42.adaptSize,
                                            width: 42.adaptSize,
                                            radius: BorderRadius.circular(
                                              21.h,
                                            ),
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            '홍길동',
                                            style: textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Column(
                                          children: [
                                            CustomImageView(
                                              imagePath: Assets
                                                  .placeholder,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              radius: BorderRadius.circular(
                                                21.h,
                                              ),
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              '김영희',
                                              style: textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Column(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  Assets.placeholder,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              radius: BorderRadius.circular(
                                                21.h,
                                              ),
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              '김희영',
                                              style: textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 17.h,
                                  top: 34.v,
                                ),
                                child: Column(
                                  children: [
                                    CustomImageView(
                                      imagePath: Assets.placeholder,
                                      height: 42.adaptSize,
                                      width: 42.adaptSize,
                                      radius: BorderRadius.circular(
                                        21.h,
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      '김희영',
                                      style: textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                            style: textTheme.titleMedium!.copyWith(
                              fontSize: 18.fSize,
                            ),
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
                              border: Border.all(
                                color: const Color(0x33A4A8AF),
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder10,
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
                                      svgPath: Assets.imgArrowleft,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Text(
                                      '2023년 8월',
                                      style: textTheme.titleMedium,
                                    ),
                                    CustomImageView(
                                      svgPath: Assets.imgArrowleft,
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
                                        return SizedBox(
                                          width: 25.h,
                                        );
                                      },
                                      itemCount: controller.schedulesTeamIsFull
                                          .value.calendar1ItemList.value.length,
                                      itemBuilder: (context, index) {
                                        final model = controller
                                            .schedulesTeamIsFull
                                            .value
                                            .calendar1ItemList
                                            .value[index];
                                        return Calendar1ItemWidget(
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
