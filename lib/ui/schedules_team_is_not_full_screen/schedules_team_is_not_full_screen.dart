// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/schedules_team_is_not_full_screen/bloc/schedules_team_is_not_full_bloc.dart';
import '/ui/schedules_team_is_not_full_screen/models/schedules_team_is_not_full_model.dart';
import '/ui/schedules_team_is_not_full_screen/models/userage_item_model.dart';
import '/ui/schedules_team_is_not_full_screen/models/userprofile_item_model.dart';
import '/ui/schedules_team_is_not_full_screen/widgets/userage_item_widget.dart';
import '/ui/schedules_team_is_not_full_screen/widgets/userprofile_item_widget.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SchedulesTeamIsNotFullScreen extends StatelessWidget {
  SchedulesTeamIsNotFullScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SchedulesTeamIsNotFullBloc>(
      create: (context) =>
          SchedulesTeamIsNotFullBloc(SchedulesTeamIsNotFullState(
        schedulesTeamIsNotFullModelObj: SchedulesTeamIsNotFullModel(),
      ))
            ..add(SchedulesTeamIsNotFullInitialEvent()),
      child: SchedulesTeamIsNotFullScreen(),
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
                            'lbl55'.tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                        SizedBox(
                          height: 81.v,
                          child: BlocSelector<
                              SchedulesTeamIsNotFullBloc,
                              SchedulesTeamIsNotFullState,
                              SchedulesTeamIsNotFullModel?>(
                            selector: (state) =>
                                state.schedulesTeamIsNotFullModelObj,
                            builder: (context, schedulesTeamIsNotFullModelObj) {
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
                                itemCount: schedulesTeamIsNotFullModelObj
                                        ?.userprofileItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  final model = schedulesTeamIsNotFullModelObj
                                          ?.userprofileItemList[index] ??
                                      UserprofileItemModel();
                                  return UserprofileItemWidget(
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
                                      SchedulesTeamIsNotFullBloc,
                                      SchedulesTeamIsNotFullState,
                                      SchedulesTeamIsNotFullModel?>(
                                    selector: (state) =>
                                        state.schedulesTeamIsNotFullModelObj,
                                    builder: (context,
                                        schedulesTeamIsNotFullModelObj) {
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
                                        itemCount:
                                            schedulesTeamIsNotFullModelObj
                                                    ?.userageItemList.length ??
                                                0,
                                        itemBuilder: (context, index) {
                                          final model =
                                              schedulesTeamIsNotFullModelObj
                                                          ?.userageItemList[
                                                      index] ??
                                                  UserageItemModel();
                                          return UserageItemWidget(
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
