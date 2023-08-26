import 'controller/id_pw_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/core/utils/validation_functions.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class IdPwLoginScreen extends GetWidget<IdPwLoginController> {
  IdPwLoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              padding: getPadding(
                top: 58,
              ),
              child: Padding(
                padding: getPadding(
                  left: 16,
                  right: 16,
                  bottom: 206,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_friends".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          right: 68,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_by".tr,
                              style: CustomTextStyles
                                  .titleSmallNanumSquareRoundOnPrimary,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLocationOnprimary,
                              height: getVerticalSize(11),
                              width: getHorizontalSize(53),
                              margin: getMargin(
                                left: 6,
                                bottom: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      controller: controller.idoneController,
                      margin: getMargin(
                        top: 40,
                      ),
                      hintText: "lbl24".tr,
                      hintStyle: CustomTextStyles.bodyLargeGray50002,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Field cannot be empty';
                        }
                        return null;
                      },
                    ),
                    Obx(
                      () => CustomTextFormField(
                        controller: controller.passwordoneController,
                        margin: getMargin(
                          top: 12,
                        ),
                        hintText: "lbl25".tr,
                        hintStyle: CustomTextStyles.bodyLargeGray50002,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword.value =
                                !controller.isShowPassword.value;
                          },
                          child: Container(
                            margin: getMargin(
                              left: 30,
                              top: 12,
                              right: 12,
                              bottom: 12,
                            ),
                            child: CustomImageView(
                              svgPath: controller.isShowPassword.value
                                  ? ImageConstant.imgEyeCrossedOut
                                  : ImageConstant.imgEyeCrossedOut,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(48),
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "Please enter valid password";
                          }
                          return null;
                        },
                        obscureText: controller.isShowPassword.value,
                        contentPadding: getPadding(
                          left: 12,
                          top: 13,
                          bottom: 13,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl26".tr,
                      margin: getMargin(
                        top: 31,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 52,
                      ),
                      child: Text(
                        "lbl27".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl28".tr,
                      margin: getMargin(
                        top: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
