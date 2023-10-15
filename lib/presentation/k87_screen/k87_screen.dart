import 'bloc/k87_bloc.dart';import 'models/k87_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';class K87Screen extends StatelessWidget {const K87Screen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<K87Bloc>(create: (context) => K87Bloc(K87State(k87ModelObj: K87Model()))..add(K87InitialEvent()), child: K87Screen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<K87Bloc, K87State>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 34.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowrightOnprimary, margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl123".tr)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 60.v), child: Padding(padding: EdgeInsets.only(left: 103.h, right: 103.h, bottom: 5.v), child: Column(children: [CustomImageView(svgPath: ImageConstant.imgLayer2Onerrorcontainer133x98, height: 133.v, width: 98.h), SizedBox(height: 41.v), Text("lbl130".tr, style: CustomTextStyles.titleMediumBlack90018)]))))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }
