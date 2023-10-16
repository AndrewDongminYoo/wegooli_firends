// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/core/utils/validation_functions.dart';
import '/presentation/seven_screen/bloc/seven_bloc.dart';
import '/presentation/seven_screen/models/seven_model.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class SevenScreen extends StatelessWidget {
  SevenScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SevenBloc>(
      create: (context) => SevenBloc(SevenState(
        sevenModelObj: SevenModel(),
      ))
        ..add(SevenInitialEvent()),
      child: SevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 58.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 16.h,
                        bottom: 174.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'lbl_friends'.tr,
                            style: theme.textTheme.displayMedium,
                          ),
                          SizedBox(height: 53.v),
                          BlocSelector<SevenBloc, SevenState,
                              TextEditingController?>(
                            selector: (state) => state.idoneController,
                            builder: (context, idoneController) {
                              return CustomTextFormField(
                                controller: idoneController,
                                hintText: 'lbl91'.tr,
                                hintStyle: CustomTextStyles.bodyLargeGray50004,
                              );
                            },
                          ),
                          SizedBox(height: 31.v),
                          BlocBuilder<SevenBloc, SevenState>(
                            builder: (context, state) {
                              return CustomTextFormField(
                                controller: state.passwordoneController,
                                hintText: 'lbl66'.tr,
                                hintStyle: CustomTextStyles.bodyLargeGray50004,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                  onTap: () {
                                    context.read<SevenBloc>().add(
                                        ChangePasswordVisibilityEvent(
                                            value: !state.isShowPassword));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 12.v, 12.h, 12.v),
                                    child: CustomImageView(
                                      svgPath: state.isShowPassword
                                          ? ImageConstant.imgEyeCrossedOut
                                          : ImageConstant.imgEyeCrossedOut,
                                    ),
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: 48.v,
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return 'Please enter valid password';
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 13.v,
                                  bottom: 13.v,
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 31.v),
                          CustomElevatedButton(
                            text: 'lbl68'.tr,
                          ),
                          SizedBox(height: 52.v),
                          Text(
                            'lbl156'.tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(height: 11.v),
                          CustomElevatedButton(
                            text: 'lbl70'.tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
