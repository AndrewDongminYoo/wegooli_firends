// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/drop_down.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import 'controller/appointment_all_collapsed_controller.dart';

// 📦 Package imports:

// ignore: must_be_immutable
class AppointmentAllCollapsedBottomsheet extends StatelessWidget {
  AppointmentAllCollapsedBottomsheet(
    this.controller, {
    super.key,
  });

  AppointmentAllCollapsedController controller;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () => print('AppointmentAllCollapsedBottomsheet is closing'),
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.v),
              decoration: BoxDecoration(
                color: lightTheme.onPrimaryContainer,
                borderRadius: BorderRadiusStyle.customBorderT10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    svgPath: Assets.svg.line.path,
                    height: 1.v,
                    width: 40.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 213.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        top: 33.v,
                      ),
                      child: Text(
                        '총 2시간 이용\n8.1 화 16:00 ~ 8.1 화 18:00',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontSize: 18.fSize,
                          height: 1.44,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
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
                      top: 18.v,
                      right: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '이용시작시간',
                          style: textTheme.titleMedium,
                        ),
                        const Spacer(),
                        Text(
                          '8.1 화 16:00',
                          style: textTheme.titleMedium,
                        ),
                        CustomImageView(
                          svgPath: Assets.svg.icoArrowLeft.path,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(left: 10.h),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 68.h,
                        top: 44.v,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '8/1',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 81.h),
                            child: Text(
                              '15',
                              style: textTheme.bodyLarge!.copyWith(
                                color: lightTheme.onPrimary.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 40.h,
                      top: 16.v,
                      right: 40.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 80.h,
                          child: Divider(
                            color: lightTheme.primary,
                          ),
                        ),
                        SizedBox(
                          width: 100.h,
                          child: Divider(
                            color: lightTheme.primary,
                            indent: 20.h,
                          ),
                        ),
                        SizedBox(
                          width: 100.h,
                          child: Divider(
                            color: lightTheme.primary,
                            indent: 20.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 67.h,
                      top: 16.v,
                      right: 70.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '8/2',
                          style: textTheme.bodyLarge,
                        ),
                        Text(
                          '16',
                          style: textTheme.bodyLarge,
                        ),
                        Text(
                          '00',
                          style: textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 40.h,
                      top: 16.v,
                      right: 40.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 80.h,
                          child: Divider(
                            color: lightTheme.primary,
                          ),
                        ),
                        SizedBox(
                          width: 100.h,
                          child: Divider(
                            color: lightTheme.primary,
                            indent: 20.h,
                          ),
                        ),
                        SizedBox(
                          width: 100.h,
                          child: Divider(
                            color: lightTheme.primary,
                            indent: 20.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 16.v,
                        right: 70.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '17',
                            style: textTheme.bodyLarge!.copyWith(
                              color: lightTheme.onPrimary.withOpacity(0.4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 83.h),
                            child: Text(
                              '10',
                              style: textTheme.bodyLarge!.copyWith(
                                color: lightTheme.onPrimary.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 41.v),
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
                      top: 18.v,
                      right: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '반납시간',
                          style: textTheme.titleMedium!.copyWith(
                            color: lightTheme.onPrimary.withOpacity(0.4),
                          ),
                        ),
                        CustomDropDown(
                          width: 114.h,
                          icon: Container(
                            margin: EdgeInsets.only(left: 10.h),
                            child: CustomImageView(
                              svgPath: Assets.svg.icoArrowLeft.path,
                            ),
                          ),
                          hintText: '8.1 화 18:00',
                          items: controller
                              .appointmentAllCollapsed.value.choices.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Container(
                    height: 8.v,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F7F7),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 18.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                          width: 104.h,
                          text: '취소',
                          buttonStyle: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB9BCC3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.h),
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          width: 216.h,
                          text: '확인',
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
