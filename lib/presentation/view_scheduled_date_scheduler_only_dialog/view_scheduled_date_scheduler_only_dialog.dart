import '../view_scheduled_date_scheduler_only_dialog/widgets/listview_item_widget.dart';import 'bloc/view_scheduled_date_scheduler_only_bloc.dart';import 'models/listview_item_model.dart';import 'models/view_scheduled_date_scheduler_only_model.dart';import 'package:flutter/material.dart';import 'package:wegooli_friends_app/core/app_export.dart';class ViewScheduledDateSchedulerOnlyDialog extends StatelessWidget {const ViewScheduledDateSchedulerOnlyDialog({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ViewScheduledDateSchedulerOnlyBloc>(create: (context) => ViewScheduledDateSchedulerOnlyBloc(ViewScheduledDateSchedulerOnlyState(viewScheduledDateSchedulerOnlyModelObj: ViewScheduledDateSchedulerOnlyModel()))..add(ViewScheduledDateSchedulerOnlyInitialEvent()), child: ViewScheduledDateSchedulerOnlyDialog()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 238.v), padding: EdgeInsets.all(20.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, alignment: Alignment.centerRight, onTap: () {onTapImgCloseone(context);}), SizedBox(height: 6.v), Text("lbl17".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 22.v), BlocSelector<ViewScheduledDateSchedulerOnlyBloc, ViewScheduledDateSchedulerOnlyState, ViewScheduledDateSchedulerOnlyModel?>(selector: (state) => state.viewScheduledDateSchedulerOnlyModelObj, builder: (context, viewScheduledDateSchedulerOnlyModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: viewScheduledDateSchedulerOnlyModelObj?.listviewItemList.length ?? 0, itemBuilder: (context, index) {ListviewItemModel model = viewScheduledDateSchedulerOnlyModelObj?.listviewItemList[index] ?? ListviewItemModel(); return ListviewItemWidget(model);});}), SizedBox(height: 10.v)]))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgCloseone(BuildContext context) { NavigatorService.goBack(); } 
 }
