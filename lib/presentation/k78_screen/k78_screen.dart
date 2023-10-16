import 'package:wegooli_friends_app/presentation/k78_screen/bloc/k78_bloc.dart';
import 'package:wegooli_friends_app/presentation/k78_screen/models/k78_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';

class K78Screen extends StatelessWidget {
  const K78Screen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K78Bloc>(
      create: (context) => K78Bloc(K78State(
        k78ModelObj: K78Model(),
      ))
        ..add(K78InitialEvent()),
      child: const K78Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K78Bloc, K78State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              height: 78.v,
              centerTitle: true,
              title: Row(
                children: [
                  AppbarImage(
                    svgPath: ImageConstant.imgFrame34949,
                  ),
                  AppbarSubtitle3(
                    text: 'lbl_0_10'.tr,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                  ),
                ],
              ),
            ),
            body: Container(
              width: 217.h,
              padding: EdgeInsets.symmetric(horizontal: 65.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 9.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFrame34933,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            'lbl_11_20'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFrame34935,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_21_30'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 6.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSaveGray40001,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_31_40'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSave,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_41_50'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSaveGray4000126x26,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_51_60'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFile,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_61_70'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFileGray40001,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_71_80'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFileGray4000126x26,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            'lbl_81_90'.tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFileGreen500,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        child: Text(
                          'lbl_90_100'.tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
