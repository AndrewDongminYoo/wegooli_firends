import 'bloc/k66_bloc.dart';
import 'models/k66_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_outlined_button.dart';

class K66Screen extends StatelessWidget {
  const K66Screen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K66Bloc>(
      create: (context) => K66Bloc(K66State(
        k66ModelObj: K66Model(),
      ))
        ..add(K66InitialEvent()),
      child: K66Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K66Bloc, K66State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 45.h,
                top: 124.v,
                right: 45.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          alignment: Alignment.center,
                          child: Text(
                            "lbl173".tr,
                            style: CustomTextStyles.bodyLargeNotoSansKRBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  SizedBox(
                    width: 169.h,
                    child: Text(
                      "lbl189".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: CustomOutlinedButton(
              text: "lbl41".tr,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 35.v,
              ),
              buttonStyle: CustomButtonStyles.outlineGrayTL4,
            ),
          ),
        );
      },
    );
  }
}
