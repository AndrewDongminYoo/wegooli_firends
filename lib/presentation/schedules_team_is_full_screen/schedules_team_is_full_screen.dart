import 'package:wegooli_friends_app/presentation/schedules_team_is_full_screen/widgets/calendar1_item_widget.dart';
import 'package:wegooli_friends_app/presentation/schedules_team_is_full_screen/bloc/schedules_team_is_full_bloc.dart';
import 'package:wegooli_friends_app/presentation/schedules_team_is_full_screen/models/calendar1_item_model.dart';
import 'package:wegooli_friends_app/presentation/schedules_team_is_full_screen/models/schedules_team_is_full_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SchedulesTeamIsFullScreen extends StatelessWidget {
  SchedulesTeamIsFullScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SchedulesTeamIsFullBloc>(
      create: (context) => SchedulesTeamIsFullBloc(SchedulesTeamIsFullState(
        schedulesTeamIsFullModelObj: SchedulesTeamIsFullModel(),
      ))
        ..add(SchedulesTeamIsFullInitialEvent()),
      child: SchedulesTeamIsFullScreen(),
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
          styleType: Style.bgOutline,
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
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'lbl55'.tr,
                                    style: CustomTextStyles.titleMedium18,
                                  ),
                                  SizedBox(height: 12.v),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse1,
                                            height: 42.adaptSize,
                                            width: 42.adaptSize,
                                            radius: BorderRadius.circular(
                                              21.h,
                                            ),
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            'lbl18'.tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Column(
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse142x42,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              radius: BorderRadius.circular(
                                                21.h,
                                              ),
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              'lbl19'.tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Column(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse11,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              radius: BorderRadius.circular(
                                                21.h,
                                              ),
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              'lbl20'.tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 17.h,
                                  top: 34.v,
                                ),
                                child: Column(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse11,
                                      height: 42.adaptSize,
                                      width: 42.adaptSize,
                                      radius: BorderRadius.circular(
                                        21.h,
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      'lbl20'.tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                            'lbl11'.tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                        CustomElevatedButton(
                          text: 'lbl56'.tr,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 12.v,
                            right: 16.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
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
                            decoration: AppDecoration.outlineBlueGray.copyWith(
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
                                          ImageConstant.imgArrowrightOnPrimary,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Text(
                                      'lbl_2023_8'.tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightOnPrimary,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 218.v,
                                  child: BlocSelector<
                                      SchedulesTeamIsFullBloc,
                                      SchedulesTeamIsFullState,
                                      SchedulesTeamIsFullModel?>(
                                    selector: (state) =>
                                        state.schedulesTeamIsFullModelObj,
                                    builder:
                                        (context, schedulesTeamIsFullModelObj) {
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
                                        itemCount: schedulesTeamIsFullModelObj
                                                ?.calendar1ItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          final model =
                                              schedulesTeamIsFullModelObj
                                                          ?.calendar1ItemList[
                                                      index] ??
                                                  Calendar1ItemModel();
                                          return Calendar1ItemWidget(
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
