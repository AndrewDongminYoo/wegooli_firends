import 'bloc/k60_bloc.dart';
import 'models/k60_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_outlined_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class K60Screen extends StatelessWidget {
  const K60Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K60Bloc>(
      create: (context) => K60Bloc(K60State(
        k60ModelObj: K60Model(),
      ))
        ..add(K60InitialEvent()),
      child: K60Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 95.v),
              BlocSelector<K60Bloc, K60State, TextEditingController?>(
                selector: (state) => state.idoneController,
                builder: (context, idoneController) {
                  return CustomTextFormField(
                    controller: idoneController,
                    hintText: "lbl91".tr,
                    hintStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 4.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGray1,
                    filled: false,
                  );
                },
              ),
              SizedBox(height: 20.v),
              BlocSelector<K60Bloc, K60State, TextEditingController?>(
                selector: (state) => state.passwordoneController,
                builder: (context, passwordoneController) {
                  return CustomTextFormField(
                    controller: passwordoneController,
                    hintText: "lbl66".tr,
                    hintStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 4.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGray1,
                    filled: false,
                  );
                },
              ),
              SizedBox(height: 20.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.outlineGray700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      "lbl70".tr,
                      style: CustomTextStyles.bodyLargeNotoSansKRGray700,
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 156.h,
                    text: "lbl68".tr,
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
