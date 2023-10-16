import 'package:wegooli_friends_app/presentation/one1_screen/bloc/one1_bloc.dart';
import 'package:wegooli_friends_app/presentation/one1_screen/models/one1_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

class One1Screen extends StatelessWidget {
  const One1Screen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<One1Bloc>(
      create: (context) => One1Bloc(One1State(
        one1ModelObj: One1Model(),
      ))
        ..add(One1InitialEvent()),
      child: const One1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<One1Bloc, One1State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      child: Container(
                        padding: EdgeInsets.all(6.h),
                        decoration: AppDecoration.outlineGray7001,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrowrightGray700,
                          height: 628.v,
                          width: 348.h,
                        ),
                      ),
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
            ),
          ),
        );
      },
    );
  }
}
