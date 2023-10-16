// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../schedules_page/widgets/calendar_item_widget.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import 'controller/schedules_controller.dart';
import 'models/schedules_model.dart';

// ignore: must_be_immutable
class SchedulesPage extends StatelessWidget {
  SchedulesPage({Key? key})
      : super(key: key);

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
          title: AppbarImage1(
            svgPath: ImageConstant.imgFriends,
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
                              'lbl51'.tr,
                              style: CustomTextStyles.titleMedium18,
                            ),
                            SizedBox(height: 12.v),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse1,
                                      height: 42.adaptSize,
                                      width: 42.adaptSize,
                                      radius: BorderRadius.circular(
                                        21.h,
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      'lbl3'.tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse142x42,
                                        height: 42.adaptSize,
                                        width: 42.adaptSize,
                                        radius: BorderRadius.circular(
                                          21.h,
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        'lbl11'.tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse11,
                                        height: 42.adaptSize,
                                        width: 42.adaptSize,
                                        radius: BorderRadius.circular(
                                          21.h,
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        'lbl12'.tr,
                                        style: theme.textTheme.bodySmall,
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
                                imagePath: ImageConstant.imgEllipse11,
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                radius: BorderRadius.circular(
                                  21.h,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                'lbl12'.tr,
                                style: theme.textTheme.bodySmall,
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
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 21.v,
                    ),
                    child: Text(
                      'lbl26'.tr,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                  CustomElevatedButton(
                    text: 'lbl52'.tr,
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
                      decoration: AppDecoration.outlineBluegray30033.copyWith(
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
                                svgPath: ImageConstant.imgArrowleft,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Text(
                                'lbl_2023_8'.tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
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
                                itemCount: controller.schedulesModelObj.value
                                    .calendarItemList.value.length,
                                itemBuilder: (context, index) {
                                  final model = controller.schedulesModelObj
                                      .value.calendarItemList.value[index];
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
