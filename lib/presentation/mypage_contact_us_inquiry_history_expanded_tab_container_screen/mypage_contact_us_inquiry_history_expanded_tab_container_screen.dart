// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_contact_us_inquiry_history_expanded_page/mypage_contact_us_inquiry_history_expanded_page.dart';
import '/presentation/mypage_contact_us_inquiry_history_expanded_tab_container_screen/bloc/mypage_contact_us_inquiry_history_expanded_tab_container_bloc.dart';
import '/presentation/mypage_contact_us_inquiry_history_expanded_tab_container_screen/models/mypage_contact_us_inquiry_history_expanded_tab_container_model.dart';
import '/presentation/mypage_contact_us_inquiry_history_page/mypage_contact_us_inquiry_history_page.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';

class MyPageContactUsInquiryHistoryExpandedTabContainerScreen
    extends StatefulWidget {
  const MyPageContactUsInquiryHistoryExpandedTabContainerScreen({Key? key})
      : super(key: key);

  @override
  MyPageContactUsInquiryHistoryExpandedTabContainerScreenState createState() =>
      MyPageContactUsInquiryHistoryExpandedTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageContactUsInquiryHistoryExpandedTabContainerBloc>(
        create: (context) => MyPageContactUsInquiryHistoryExpandedTabContainerBloc(
            MyPageContactUsInquiryHistoryExpandedTabContainerState(
                mypageContactUsInquiryHistoryExpandedTabContainerModelObj:
                    MyPageContactUsInquiryHistoryExpandedTabContainerModel()))
          ..add(
              MyPageContactUsInquiryHistoryExpandedTabContainerInitialEvent()),
        child: const MyPageContactUsInquiryHistoryExpandedTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class MyPageContactUsInquiryHistoryExpandedTabContainerScreenState
    extends State<MyPageContactUsInquiryHistoryExpandedTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<MyPageContactUsInquiryHistoryExpandedTabContainerBloc,
            MyPageContactUsInquiryHistoryExpandedTabContainerState>(
        builder: (context, state) {
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
                  title: AppbarTitle(text: 'lbl136'.tr)),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      child: Column(children: [
                    SizedBox(
                        height: 65.v,
                        width: double.maxFinite,
                        child: TabBar(
                            controller: tabviewController,
                            isScrollable: true,
                            labelColor: theme.colorScheme.onPrimary,
                            unselectedLabelColor:
                                theme.colorScheme.onPrimary.withOpacity(0.4),
                            tabs: [
                              Tab(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 46.h, vertical: 11.v),
                                      decoration: AppDecoration.outlinePrimary,
                                      child: Column(children: [
                                        Text('lbl142'.tr),
                                        Padding(
                                            padding: EdgeInsets.only(top: 5.v),
                                            child: Text('lbl_102'.tr))
                                      ]))),
                              Tab(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.h, vertical: 11.v),
                                      decoration: AppDecoration.outlineAmberA,
                                      child: Column(children: [
                                        Text('lbl140'.tr),
                                        Padding(
                                            padding: EdgeInsets.only(top: 6.v),
                                            child: Text('lbl_102'.tr))
                                      ]))),
                              Tab(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 39.h, vertical: 11.v),
                                      decoration: AppDecoration.outlineAmberA,
                                      child: Column(children: [
                                        Text('lbl139'.tr),
                                        Padding(
                                            padding: EdgeInsets.only(top: 5.v),
                                            child: Text('lbl_102'.tr))
                                      ])))
                            ])),
                    SizedBox(
                        height: 592.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              MyPageContactUsInquiryHistoryExpandedPage.builder(
                                  context),
                              MyPageContactUsInquiryHistoryExpandedPage.builder(
                                  context),
                              MyPageContactUsInquiryHistoryPage.builder(context)
                            ]))
                  ])))));
    });
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
