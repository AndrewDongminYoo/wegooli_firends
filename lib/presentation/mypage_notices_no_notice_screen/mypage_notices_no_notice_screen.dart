import 'bloc/mypage_notices_no_notice_bloc.dart';import 'models/mypage_notices_no_notice_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';class MypageNoticesNoNoticeScreen extends StatelessWidget {const MypageNoticesNoNoticeScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MypageNoticesNoNoticeBloc>(create: (context) => MypageNoticesNoNoticeBloc(MypageNoticesNoNoticeState(mypageNoticesNoNoticeModelObj: MypageNoticesNoNoticeModel()))..add(MypageNoticesNoNoticeInitialEvent()), child: MypageNoticesNoNoticeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<MypageNoticesNoNoticeBloc, MypageNoticesNoNoticeState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 34.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowrightOnprimary, margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl42".tr)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 50.v), child: Padding(padding: EdgeInsets.only(left: 103.h, right: 103.h, bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.img, height: 177.v, width: 120.h), SizedBox(height: 21.v), Text("lbl43".tr, style: CustomTextStyles.titleMediumBlack90018)]))))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }