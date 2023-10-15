import 'bloc/k112_bloc.dart';import 'models/k112_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';class K112Screen extends StatelessWidget {const K112Screen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<K112Bloc>(create: (context) => K112Bloc(K112State(k112ModelObj: K112Model()))..add(K112InitialEvent()), child: K112Screen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<K112Bloc, K112State>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: CustomAppBar(height: 40.v, leadingWidth: 33.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 4.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle1(text: "lbl200".tr)), body: Container(width: 328.h, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 5.v), padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v), decoration: AppDecoration.outlineGray3001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl222".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 6.v), Text("lbl_12_34562".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 6.v), Text("msg_150_000".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 5.v), Text("msg_2023_07_01".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 5.v), Text("msg_2023".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 8.v), Container(padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v), decoration: AppDecoration.outlineGray700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Text("lbl228".tr, style: CustomTextStyles.bodyLargeNotoSansKRGray700))]))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }
