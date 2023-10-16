// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/signup_complete_controller.dart';

// ignore_for_file: must_be_immutable
class SignupCompleteScreen extends GetWidget<SignupCompleteController> {
  const SignupCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 50.v),
          child: Column(
            children: [
              SizedBox(height: 159.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 103.h,
                      right: 103.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLayer2,
                          height: 108.v,
                          width: 135.h,
                        ),
                        SizedBox(height: 32.v),
                        SizedBox(
                          width: 153.h,
                          child: Text(
                            'lbl36'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall!.copyWith(
                              height: 1.42,
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
        bottomNavigationBar: CustomElevatedButton(
          text: 'lbl37'.tr,
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 50.v,
          ),
        ),
      ),
    );
  }
}
