import 'bloc/mypage_contact_us_empty_history_bloc.dart';import 'models/mypage_contact_us_empty_history_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';class MypageContactUsEmptyHistoryScreen extends StatelessWidget {const MypageContactUsEmptyHistoryScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MypageContactUsEmptyHistoryBloc>(create: (context) => MypageContactUsEmptyHistoryBloc(MypageContactUsEmptyHistoryState(mypageContactUsEmptyHistoryModelObj: MypageContactUsEmptyHistoryModel()))..add(MypageContactUsEmptyHistoryInitialEvent()), child: MypageContactUsEmptyHistoryScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<MypageContactUsEmptyHistoryBloc, MypageContactUsEmptyHistoryState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 34.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowrightOnprimary, margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl136".tr)), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 50.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 105.h, right: 105.h, bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.img, height: 177.v, width: 120.h), SizedBox(height: 21.v), Text("lbl137".tr, style: CustomTextStyles.titleMediumBlack90018)]))))])), bottomNavigationBar: Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v), decoration: AppDecoration.shadow, child: CustomElevatedButton(text: "lbl138".tr, buttonStyle: CustomButtonStyles.fillGrayTL26, buttonTextStyle: CustomTextStyles.titleMediumBluegray200))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }
