import '../mypage_contact_us_1_1_contact_us_screen/widgets/listaddphotoalt_item_widget.dart';import 'bloc/mypage_contact_us_1_1_contact_us_bloc.dart';import 'models/listaddphotoalt_item_model.dart';import 'models/mypage_contact_us_1_1_contact_us_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';import 'package:wegooli_friends_app/widgets/custom_drop_down.dart';import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';class MypageContactUs11ContactUsScreen extends StatelessWidget {const MypageContactUs11ContactUsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MypageContactUs11ContactUsBloc>(create: (context) => MypageContactUs11ContactUsBloc(MypageContactUs11ContactUsState(mypageContactUs11ContactUsModelObj: MypageContactUs11ContactUsModel()))..add(MypageContactUs11ContactUsInitialEvent()), child: MypageContactUs11ContactUsScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: 34.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowrightOnprimary, margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_1_12".tr)), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 27.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 16.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [BlocSelector<MypageContactUs11ContactUsBloc, MypageContactUs11ContactUsState, MypageContactUs11ContactUsModel?>(selector: (state) => state.mypageContactUs11ContactUsModelObj, builder: (context, mypageContactUs11ContactUsModelObj) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 12.v), child: CustomImageView(svgPath: ImageConstant.imgCaretdownGray800)), margin: EdgeInsets.only(right: 16.h), hintText: "lbl147".tr, hintStyle: CustomTextStyles.bodyLargeGray500, items: mypageContactUs11ContactUsModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<MypageContactUs11ContactUsBloc>().add(ChangeDropDownEvent(value: value));});}), BlocSelector<MypageContactUs11ContactUsBloc, MypageContactUs11ContactUsState, TextEditingController?>(selector: (state) => state.groupSixtyFiveController, builder: (context, groupSixtyFiveController) {return CustomTextFormField(controller: groupSixtyFiveController, margin: EdgeInsets.only(top: 21.v, right: 16.h), hintText: "lbl148".tr, hintStyle: CustomTextStyles.bodyLargeGray50004, textInputAction: TextInputAction.done, maxLines: 15, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v));}), SizedBox(height: 21.v), Text("lbl149".tr, style: CustomTextStyles.titleMedium18), Align(alignment: Alignment.centerRight, child: SizedBox(height: 78.v, child: BlocSelector<MypageContactUs11ContactUsBloc, MypageContactUs11ContactUsState, MypageContactUs11ContactUsModel?>(selector: (state) => state.mypageContactUs11ContactUsModelObj, builder: (context, mypageContactUs11ContactUsModelObj) {return ListView.separated(padding: EdgeInsets.only(left: 76.h, top: 7.v, right: 45.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 5.h);}, itemCount: mypageContactUs11ContactUsModelObj?.listaddphotoaltItemList.length ?? 0, itemBuilder: (context, index) {ListaddphotoaltItemModel model = mypageContactUs11ContactUsModelObj?.listaddphotoaltItemList[index] ?? ListaddphotoaltItemModel(); return ListaddphotoaltItemWidget(model);});})))]))))])), bottomNavigationBar: Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v), decoration: AppDecoration.shadow, child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomElevatedButton(width: 104.h, text: "lbl36".tr, buttonStyle: CustomButtonStyles.fillGray), CustomElevatedButton(width: 216.h, text: "lbl136".tr, margin: EdgeInsets.only(left: 8.h))])))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }