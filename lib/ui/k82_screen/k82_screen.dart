// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k82_screen/bloc/k82_bloc.dart';
import '/ui/k82_screen/models/k82_model.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class K82Screen extends StatelessWidget {
  K82Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K82Bloc>(
      create: (context) => K82Bloc(K82State(
        k82ModelObj: K82Model(),
      ))
        ..add(K82InitialEvent()),
      child: K82Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K82Bloc, K82State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              height: 45.v,
              title: AppbarImage(
                svgPath: ImageConstant.imgGroup31,
                margin: EdgeInsets.only(left: 111.h),
              ),
              actions: [
                AppbarSubtitle(
                  text: 'lbl_friend'.tr,
                  margin: EdgeInsets.fromLTRB(4.h, 13.v, 111.h, 11.v),
                ),
              ],
              styleType: Style.bgOutline_2,
            ),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 90.v),
                  SizedBox(
                    height: 150.v,
                    width: 270.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightGray700,
                          height: 138.v,
                          width: 258.h,
                        ),
                        Align(
                          child: Text(
                            'lbl173'.tr,
                            style: CustomTextStyles.bodyLargeNotoSansKRBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    'lbl173'.tr,
                    style: CustomTextStyles.bodyLargeNotoSansKRBlack900,
                  ),
                  SizedBox(height: 37.v),
                  CustomOutlinedButton(
                    text: 'lbl192'.tr,
                  ),
                  const Spacer(),
                  CustomOutlinedButton(
                    text: 'lbl136'.tr,
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