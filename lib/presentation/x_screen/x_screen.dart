import 'bloc/x_bloc.dart';
import 'models/x_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

class XScreen extends StatelessWidget {
  XScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<XBloc>(
      create: (context) => XBloc(XState(
        xModelObj: XModel(),
      ))
        ..add(XInitialEvent()),
      child: XScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<XBloc, XState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              height: 45.v,
              centerTitle: true,
              title: AppbarImage(
                svgPath: ImageConstant.imgFriends,
              ),
              styleType: Style.bgOutline_1,
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 60.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          right: 16.h,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgLayer2Onerrorcontainer133x98,
                              height: 133.v,
                              width: 98.h,
                            ),
                            SizedBox(height: 41.v),
                            Text(
                              "lbl191".tr,
                              style: CustomTextStyles.titleMediumBlack90018,
                            ),
                            SizedBox(height: 32.v),
                            CustomElevatedButton(
                              text: "lbl192".tr,
                            ),
                            SizedBox(height: 50.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 10.v,
                                ),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder35,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgContactsupport,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                    ),
                                    SizedBox(height: 1.v),
                                    Text(
                                      "lbl136".tr,
                                      style: CustomTextStyles.bodySmallBlack900,
                                    ),
                                    SizedBox(height: 3.v),
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
      },
    );
  }
}
