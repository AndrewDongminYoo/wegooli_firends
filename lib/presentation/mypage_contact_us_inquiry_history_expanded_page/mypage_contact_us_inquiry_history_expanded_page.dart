import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_expanded_page/bloc/mypage_contact_us_inquiry_history_expanded_bloc.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_inquiry_history_expanded_page/models/mypage_contact_us_inquiry_history_expanded_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class MyPageContactUsInquiryHistoryExpandedPage extends StatefulWidget {
  const MyPageContactUsInquiryHistoryExpandedPage({Key? key}) : super(key: key);

  @override
  MyPageContactUsInquiryHistoryExpandedPageState createState() =>
      MyPageContactUsInquiryHistoryExpandedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageContactUsInquiryHistoryExpandedBloc>(
      create: (context) => MyPageContactUsInquiryHistoryExpandedBloc(
          MyPageContactUsInquiryHistoryExpandedState(
        mypageContactUsInquiryHistoryExpandedModelObj:
            MyPageContactUsInquiryHistoryExpandedModel(),
      ))
        ..add(MyPageContactUsInquiryHistoryExpandedInitialEvent()),
      child: const MyPageContactUsInquiryHistoryExpandedPage(),
    );
  }
}

class MyPageContactUsInquiryHistoryExpandedPageState
    extends State<MyPageContactUsInquiryHistoryExpandedPage>
    with
        AutomaticKeepAliveClientMixin<
            MyPageContactUsInquiryHistoryExpandedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyPageContactUsInquiryHistoryExpandedBloc,
        MyPageContactUsInquiryHistoryExpandedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 15.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'msg14'.tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      SizedBox(height: 3.v),
                                      Text(
                                        'lbl_2023_08_23'.tr,
                                        style:
                                            CustomTextStyles.bodySmallOnPrimary,
                                      ),
                                    ],
                                  ),
                                  CustomOutlinedButton(
                                    height: 28.v,
                                    width: 52.h,
                                    text: 'lbl139'.tr,
                                    margin: EdgeInsets.only(
                                      left: 42.h,
                                      top: 4.v,
                                      bottom: 2.v,
                                    ),
                                    buttonStyle:
                                        CustomButtonStyles.outlineBlueGray,
                                    buttonTextStyle:
                                        CustomTextStyles.bodySmallGray70001,
                                  ),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightOnPrimary,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 10.h,
                                      top: 9.v,
                                      bottom: 7.v,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 17.v),
                              const Divider(),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 15.v,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'msg14'.tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          'lbl_2023_08_23'.tr,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary,
                                        ),
                                      ],
                                    ),
                                    CustomOutlinedButton(
                                      height: 28.v,
                                      width: 65.h,
                                      text: 'lbl140'.tr,
                                      margin: EdgeInsets.only(
                                        left: 29.h,
                                        top: 4.v,
                                        bottom: 2.v,
                                      ),
                                      buttonStyle:
                                          CustomButtonStyles.outlineBlueGray,
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmallGray70001,
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightOnPrimary,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 10.h,
                                        top: 9.v,
                                        bottom: 7.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 322.h,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  top: 7.v,
                                  right: 7.h,
                                ),
                                child: Text(
                                  'msg15'.tr,
                                  maxLines: 8,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 10.v,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant
                                          .imgSubdirectoryarrowright,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        'lbl141'.tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                child: Container(
                                  width: 302.h,
                                  margin: EdgeInsets.only(
                                    left: 21.h,
                                    top: 5.v,
                                    right: 7.h,
                                  ),
                                  child: Text(
                                    'msg16'.tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 19.v),
                              const Divider(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 166.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 15.v),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'msg14'.tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              SizedBox(height: 3.v),
                                              Text(
                                                'lbl_2023_08_23'.tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary,
                                              ),
                                            ],
                                          ),
                                          CustomOutlinedButton(
                                            height: 28.v,
                                            width: 65.h,
                                            text: 'lbl140'.tr,
                                            margin: EdgeInsets.only(
                                              left: 29.h,
                                              top: 4.v,
                                              bottom: 2.v,
                                            ),
                                            buttonStyle: CustomButtonStyles
                                                .outlineBlueGray,
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallGray70001,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightOnPrimary,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 10.h,
                                              top: 9.v,
                                              bottom: 7.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 17.v),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 29.v,
                                  ),
                                  decoration: AppDecoration.shadow,
                                  child: CustomElevatedButton(
                                    text: 'lbl138'.tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillGrayTL26,
                                    buttonTextStyle:
                                        CustomTextStyles.titleMediumBluegray200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
