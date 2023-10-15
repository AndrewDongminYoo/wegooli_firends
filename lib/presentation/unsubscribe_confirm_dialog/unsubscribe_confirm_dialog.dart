import 'bloc/unsubscribe_confirm_bloc.dart';import 'models/unsubscribe_confirm_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';class UnsubscribeConfirmDialog extends StatelessWidget {const UnsubscribeConfirmDialog({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<UnsubscribeConfirmBloc>(create: (context) => UnsubscribeConfirmBloc(UnsubscribeConfirmState(unsubscribeConfirmModelObj: UnsubscribeConfirmModel()))..add(UnsubscribeConfirmInitialEvent()), child: UnsubscribeConfirmDialog()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 267.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 25.h, top: 21.v, right: 25.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl38".tr, style: CustomTextStyles.titleMedium18), CustomImageView(svgPath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 3.v), onTap: () {onTapImgCloseone(context);})])), Container(width: 278.h, margin: EdgeInsets.only(left: 25.h, top: 38.v, right: 25.h), child: Text("msg".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 20.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 164.h, text: "lbl36".tr, buttonStyle: CustomButtonStyles.fillGrayBL10, buttonTextStyle: theme.textTheme.titleMedium!), CustomElevatedButton(width: 164.h, text: "lbl39".tr, buttonStyle: CustomButtonStyles.fillPrimaryBR10, buttonTextStyle: theme.textTheme.titleMedium!)])]))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgCloseone(BuildContext context) { NavigatorService.goBack(); } 
 }
