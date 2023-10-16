// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_contact_us_1_1_contact_us_screen/bloc/mypage_contact_us_1_1_contact_us_bloc.dart';
import '/presentation/mypage_contact_us_1_1_contact_us_screen/models/listaddphotoalt_item_model.dart';
import '/presentation/mypage_contact_us_1_1_contact_us_screen/models/mypage_contact_us_1_1_contact_us_model.dart';
import '/presentation/mypage_contact_us_1_1_contact_us_screen/widgets/listaddphotoalt_item_widget.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class MyPageContactUs11ContactUsScreen extends StatelessWidget {
  const MyPageContactUs11ContactUsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageContactUs11ContactUsBloc>(
        create: (context) => MyPageContactUs11ContactUsBloc(
            MyPageContactUs11ContactUsState(
                mypageContactUs11ContactUsModelObj:
                    MyPageContactUs11ContactUsModel()))
          ..add(MyPageContactUs11ContactUsInitialEvent()),
        child: const MyPageContactUs11ContactUsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl_1_12'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BlocSelector<
                                            MyPageContactUs11ContactUsBloc,
                                            MyPageContactUs11ContactUsState,
                                            MyPageContactUs11ContactUsModel?>(
                                        selector: (state) => state
                                            .mypageContactUs11ContactUsModelObj,
                                        builder: (context,
                                            mypageContactUs11ContactUsModelObj) {
                                          return CustomDropDown(
                                              icon: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      30.h, 12.v, 10.h, 12.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCaretdownGray800)),
                                              margin:
                                                  EdgeInsets.only(right: 16.h),
                                              hintText: 'lbl147'.tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeGray500,
                                              items:
                                                  mypageContactUs11ContactUsModelObj
                                                          ?.dropdownItemList ??
                                                      [],
                                              onChanged: (value) {
                                                context
                                                    .read<
                                                        MyPageContactUs11ContactUsBloc>()
                                                    .add(ChangeDropDownEvent(
                                                        value: value));
                                              });
                                        }),
                                    BlocSelector<
                                            MyPageContactUs11ContactUsBloc,
                                            MyPageContactUs11ContactUsState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.groupSixtyFiveController,
                                        builder: (context,
                                            groupSixtyFiveController) {
                                          return CustomTextFormField(
                                              controller:
                                                  groupSixtyFiveController,
                                              margin: EdgeInsets.only(
                                                  top: 21.v, right: 16.h),
                                              hintText: 'lbl148'.tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeGray50004,
                                              textInputAction:
                                                  TextInputAction.done,
                                              maxLines: 15,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 12.h,
                                                      vertical: 14.v));
                                        }),
                                    SizedBox(height: 21.v),
                                    Text('lbl149'.tr,
                                        style: CustomTextStyles.titleMedium18),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 78.v,
                                            child: BlocSelector<
                                                    MyPageContactUs11ContactUsBloc,
                                                    MyPageContactUs11ContactUsState,
                                                    MyPageContactUs11ContactUsModel?>(
                                                selector: (state) => state
                                                    .mypageContactUs11ContactUsModelObj,
                                                builder: (context,
                                                    mypageContactUs11ContactUsModelObj) {
                                                  return ListView.separated(
                                                      padding: EdgeInsets.only(
                                                          left: 76.h,
                                                          top: 7.v,
                                                          right: 45.h),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            width: 5.h);
                                                      },
                                                      itemCount:
                                                          mypageContactUs11ContactUsModelObj
                                                                  ?.listaddphotoaltItemList
                                                                  .length ??
                                                              0,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final model =
                                                            mypageContactUs11ContactUsModelObj
                                                                        ?.listaddphotoaltItemList[
                                                                    index] ??
                                                                ListaddphotoaltItemModel();
                                                        return ListaddphotoaltItemWidget(
                                                            model);
                                                      });
                                                })))
                                  ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
                decoration: AppDecoration.shadow,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomElevatedButton(
                          width: 104.h,
                          text: 'lbl36'.tr,
                          buttonStyle: CustomButtonStyles.fillGray),
                      CustomElevatedButton(
                          width: 216.h,
                          text: 'lbl136'.tr,
                          margin: EdgeInsets.only(left: 8.h))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
