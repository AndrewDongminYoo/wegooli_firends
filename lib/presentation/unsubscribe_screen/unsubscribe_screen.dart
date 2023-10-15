import 'bloc/unsubscribe_bloc.dart';import 'models/unsubscribe_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';class UnsubscribeScreen extends StatelessWidget {const UnsubscribeScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<UnsubscribeBloc>(create: (context) => UnsubscribeBloc(UnsubscribeState(unsubscribeModelObj: UnsubscribeModel()))..add(UnsubscribeInitialEvent()), child: UnsubscribeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<UnsubscribeBloc, UnsubscribeState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 34.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowrightOnprimary, margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl38".tr)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 50.v), child: Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.img157x120, height: 157.v, width: 120.h), SizedBox(height: 20.v), SizedBox(width: 179.h, child: Text("msg17".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumBlack90018.copyWith(height: 1.44))), SizedBox(height: 23.v), Text("msg_2023_8_4".tr, style: CustomTextStyles.bodyLargeBlack900), SizedBox(height: 81.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 104.h, text: "lbl36".tr, buttonStyle: CustomButtonStyles.fillGray), CustomElevatedButton(width: 216.h, text: "lbl143".tr)])]))))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }
