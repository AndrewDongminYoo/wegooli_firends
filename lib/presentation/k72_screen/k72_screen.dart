import '../k72_screen/widgets/datecolumn_item_widget.dart';
import '../k72_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/k72_bloc.dart';
import 'models/datecolumn_item_model.dart';
import 'models/k72_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

class K72Screen extends StatelessWidget {
  K72Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K72Bloc>(
      create: (context) => K72Bloc(K72State(
        k72ModelObj: K72Model(),
      ))
        ..add(K72InitialEvent()),
      child: K72Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: AppbarImage(
            svgPath: ImageConstant.imgFriends,
          ),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl55".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                        SizedBox(
                          height: 81.v,
                          child: BlocSelector<K72Bloc, K72State, K72Model?>(
                            selector: (state) => state.k72ModelObj,
                            builder: (context, k72ModelObj) {
                              return ListView.separated(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 12.v,
                                  right: 16.h,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    width: 15.h,
                                  );
                                },
                                itemCount:
                                    k72ModelObj?.userprofile1ItemList.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  Userprofile1ItemModel model = k72ModelObj
                                          ?.userprofile1ItemList[index] ??
                                      Userprofile1ItemModel();
                                  return Userprofile1ItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Container(
                          height: 8.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.gray10002,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 21.v,
                          ),
                          child: Text(
                            "lbl11".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                        CustomElevatedButton(
                          text: "lbl56".tr,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 12.v,
                            right: 16.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 20.v,
                              right: 15.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.h,
                              vertical: 22.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray300331.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightOnprimary,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Text(
                                      "lbl_2023_8".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightOnprimary,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 218.v,
                                  child: BlocSelector<K72Bloc, K72State,
                                      K72Model?>(
                                    selector: (state) => state.k72ModelObj,
                                    builder: (context, k72ModelObj) {
                                      return ListView.separated(
                                        padding: EdgeInsets.fromLTRB(
                                            6.h, 26.v, 10.h, 2.v),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (
                                          context,
                                          index,
                                        ) {
                                          return SizedBox(
                                            width: 25.h,
                                          );
                                        },
                                        itemCount: k72ModelObj
                                                ?.datecolumnItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          DatecolumnItemModel model =
                                              k72ModelObj?.datecolumnItemList[
                                                      index] ??
                                                  DatecolumnItemModel();
                                          return DatecolumnItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
