import 'bloc/k83_bloc.dart';
import 'models/k83_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';

class K83Screen extends StatelessWidget {
  K83Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K83Bloc>(
      create: (context) => K83Bloc(K83State(
        k83ModelObj: K83Model(),
      ))
        ..add(K83InitialEvent()),
      child: K83Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K83Bloc, K83State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 111.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineGray400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup31,
                          height: 19.v,
                          width: 89.h,
                          margin: EdgeInsets.only(bottom: 5.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_friend".tr,
                            style: CustomTextStyles.bodyLargeBluegray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 26.v,
                      right: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl45".tr,
                                style: CustomTextStyles.titleMediumBluegray900,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "msg_xxx111_gmail_com".tr,
                                style: CustomTextStyles
                                    .bodyMediumPretendardBluegray900Light,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "lbl_010_1234_5678".tr,
                                style: CustomTextStyles
                                    .bodyMediumPretendardBluegray900Light,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse165x65,
                          height: 65.adaptSize,
                          width: 65.adaptSize,
                          radius: BorderRadius.circular(
                            32.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Divider(
                    color: appTheme.gray10001,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 22.v,
                      right: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl199".tr,
                          style:
                              CustomTextStyles.titleMediumBluegray900SemiBold,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlueGray900,
                          height: 13.v,
                          width: 7.h,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 31.v,
                      right: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl200".tr,
                          style:
                              CustomTextStyles.titleMediumBluegray900SemiBold,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlueGray900,
                          height: 13.v,
                          width: 7.h,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.h, 30.v, 16.h, 5.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl188".tr,
                          style:
                              CustomTextStyles.titleMediumBluegray900SemiBold,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlueGray900,
                          height: 13.v,
                          width: 7.h,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        ),
                      ],
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
      },
    );
  }
}
