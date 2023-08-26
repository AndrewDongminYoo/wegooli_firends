import 'controller/register_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterSuccessScreen extends GetWidget<RegisterSuccessController> {
  const RegisterSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 109,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
                bottom: 170,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1109x136,
                    height: getVerticalSize(109),
                    width: getHorizontalSize(136),
                  ),
                  Container(
                    width: getHorizontalSize(153),
                    margin: getMargin(
                      top: 29,
                    ),
                    child: Text(
                      "lbl60".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 62,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl61".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        CustomTextFormField(
                          controller: controller.invitecodeprompController,
                          margin: getMargin(
                            top: 4,
                          ),
                          hintText: "lbl62".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray50002,
                          textInputAction: TextInputAction.done,
                        ),
                        Container(
                          width: getHorizontalSize(179),
                          margin: getMargin(
                            top: 3,
                          ),
                          child: Text(
                            "msg12".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallErrorContainer
                                .copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl63".tr,
                    margin: getMargin(
                      top: 51,
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
