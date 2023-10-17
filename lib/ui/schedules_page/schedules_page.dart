// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../schedules_page/widgets/calendar_item_widget.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import 'controller/schedules_controller.dart';
import 'models/schedules_model.dart';

// ignore: must_be_immutable
class SchedulesPage extends StatelessWidget {
  SchedulesPage({Key? key}) : super(key: key);

  SchedulesController controller =
      Get.put(SchedulesController(SchedulesModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: CustomImageView(
            svgPath: Assets.svg.imgFriends.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
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
                                      imagePath: Assets.images.placeholder.path,
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
                                        imagePath:
                                            Assets.images.placeholder.path,
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
                                            Assets.images.placeholder.path,
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
                                imagePath: Assets.images.placeholder.path,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                svgPath: Assets.svg.imgArrowleft.path,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Text(
                                '2023년 8월',
                                style: textTheme.titleMedium,
                              ),
                              CustomImageView(
                                svgPath: Assets.svg.imgArrowleft.path,
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
                                padding:
                                    EdgeInsets.fromLTRB(6.h, 26.v, 10.h, 2.v),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    width: 25.h,
                                  );
                                },
                                itemCount: controller.schedules.value
                                    .calendarItemList.value.length,
                                itemBuilder: (context, index) {
                                  final model = controller.schedules.value
                                      .calendarItemList.value[index];
                                  return CalendarItemWidget(
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
      ),
    );
  }
}
