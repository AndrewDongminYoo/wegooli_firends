// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signin_page_screen/bloc/signin_page_bloc.dart';
import '/presentation/signin_page_screen/models/signin_page_model.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class SigninPageScreen extends StatelessWidget {
  const SigninPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SigninPageBloc>(
      create: (context) => SigninPageBloc(SigninPageState(
        signinPageModelObj: SigninPageModel(),
      ))
        ..add(SigninPageInitialEvent()),
      child: const SigninPageScreen(),
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 30.v),
              CustomImageView(
                svgPath: ImageConstant.imgFriendsOnPrimary,
                height: 38.v,
                width: 193.h,
              ),
              SizedBox(height: 97.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'lbl64'.tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  BlocSelector<SigninPageBloc, SigninPageState,
                      TextEditingController?>(
                    selector: (state) => state.emailinputoneController,
                    builder: (context, emailinputoneController) {
                      return CustomTextFormField(
                        controller: emailinputoneController,
                        hintText: 'lbl65'.tr,
                        contentPadding: EdgeInsets.symmetric(vertical: 9.v),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlueGray,
                        filled: false,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'lbl66'.tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  BlocSelector<SigninPageBloc, SigninPageState,
                      TextEditingController?>(
                    selector: (state) => state.passwordinputController,
                    builder: (context, passwordinputController) {
                      return CustomTextFormField(
                        controller: passwordinputController,
                        hintText: 'lbl67'.tr,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: EdgeInsets.only(
                            left: 30.h,
                            top: 7.v,
                            bottom: 8.v,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgEyeCrossedOut,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 39.v,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 9.v),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlueGray,
                        filled: false,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 48.v,
                text: 'lbl68'.tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                buttonTextStyle: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 60.v),
              Text(
                'lbl69'.tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 10.v),
              Text(
                'lbl70'.tr,
                style: CustomTextStyles.bodySmallBluegray200_1,
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 42.h,
                child: Divider(
                  color: appTheme.blueGray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
