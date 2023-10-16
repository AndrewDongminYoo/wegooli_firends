// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/mypage_card_list_screen/bloc/mypage_card_list_bloc.dart';
import '/ui/mypage_card_list_screen/models/mypage_card_list_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_radio_button.dart';

class MyPageCardListScreen extends StatelessWidget {
  const MyPageCardListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageCardListBloc>(
        create: (context) => MyPageCardListBloc(
            MyPageCardListState(mypageCardListModelObj: MyPageCardListModel()))
          ..add(MyPageCardListInitialEvent()),
        child: const MyPageCardListScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      NavigatorService.goBack();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl124'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 22.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocSelector<MyPageCardListBloc,
                                            MyPageCardListState, String?>(
                                        selector: (state) => state.radioGroup,
                                        builder: (context, radioGroup) {
                                          return CustomRadioButton(
                                              text: 'lbl_7210'.tr,
                                              value: 'lbl_7210'.tr,
                                              groupValue: radioGroup,
                                              onChange: (value) {
                                                context
                                                    .read<MyPageCardListBloc>()
                                                    .add(ChangeRadioButtonEvent(
                                                        value: value));
                                              });
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCloseGray700,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 13.v, right: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocSelector<MyPageCardListBloc,
                                            MyPageCardListState, String?>(
                                        selector: (state) => state.radioGroup1,
                                        builder: (context, radioGroup1) {
                                          return CustomRadioButton(
                                              text: 'lbl_1210'.tr,
                                              value: 'lbl_1210'.tr,
                                              groupValue: radioGroup1,
                                              onChange: (value) {
                                                context
                                                    .read<MyPageCardListBloc>()
                                                    .add(
                                                        ChangeRadioButton1Event(
                                                            value: value));
                                              });
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCloseGray700,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          SizedBox(height: 31.v),
                          CustomElevatedButton(text: 'lbl125'.tr)
                        ]))))));
  }
}
