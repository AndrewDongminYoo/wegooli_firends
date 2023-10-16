import 'package:wegooli_friends_app/presentation/mypage_notices_screen/widgets/mypage_notices_item_widget.dart';
import 'package:wegooli_friends_app/presentation/mypage_notices_screen/bloc/mypage_notices_bloc.dart';
import 'package:wegooli_friends_app/presentation/mypage_notices_screen/models/mypage_notices_item_model.dart';
import 'package:wegooli_friends_app/presentation/mypage_notices_screen/models/mypage_notices_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';

class MyPageNoticesScreen extends StatelessWidget {
  const MyPageNoticesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageNoticesBloc>(
        create: (context) => MyPageNoticesBloc(
            MyPageNoticesState(mypageNoticesModelObj: MyPageNoticesModel()))
          ..add(MyPageNoticesInitialEvent()),
        child: const MyPageNoticesScreen());
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
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl42'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 15.v),
                      decoration: AppDecoration.fillAmberA,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('msg2'.tr, style: theme.textTheme.titleSmall),
                            SizedBox(height: 3.v),
                            Text('lbl_2023_08_23'.tr,
                                style: CustomTextStyles.bodySmallOnPrimary)
                          ])),
                  Expanded(
                      child: BlocSelector<MyPageNoticesBloc, MyPageNoticesState,
                              MyPageNoticesModel?>(
                          selector: (state) => state.mypageNoticesModelObj,
                          builder: (context, mypageNoticesModelObj) {
                            return ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 0.5.v),
                                      child: SizedBox(
                                          width: 329.h,
                                          child: Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray30033)));
                                },
                                itemCount: mypageNoticesModelObj
                                        ?.mypageNoticesItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  final model = mypageNoticesModelObj
                                          ?.mypageNoticesItemList[index] ??
                                      MyPageNoticesItemModel();
                                  return MyPageNoticesItemWidget(model);
                                });
                          }))
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
