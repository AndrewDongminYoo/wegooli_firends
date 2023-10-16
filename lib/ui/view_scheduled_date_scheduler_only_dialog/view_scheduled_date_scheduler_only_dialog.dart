// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/bloc/view_scheduled_date_scheduler_only_bloc.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/models/listview_item_model.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/models/view_scheduled_date_scheduler_only_model.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/widgets/listview_item_widget.dart';

class ViewScheduledDateSchedulerOnlyDialog extends StatelessWidget {
  const ViewScheduledDateSchedulerOnlyDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ViewScheduledDateSchedulerOnlyBloc>(
        create: (context) => ViewScheduledDateSchedulerOnlyBloc(
            ViewScheduledDateSchedulerOnlyState(
                viewScheduledDateSchedulerOnlyModelObj:
                    ViewScheduledDateSchedulerOnlyModel()))
          ..add(ViewScheduledDateSchedulerOnlyInitialEvent()),
        child: const ViewScheduledDateSchedulerOnlyDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 238.v),
            padding: EdgeInsets.all(20.h),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      alignment: Alignment.centerRight,
                      onTap: NavigatorService.goBack),
                  SizedBox(height: 6.v),
                  Text('lbl17'.tr, style: CustomTextStyles.titleMedium18),
                  SizedBox(height: 22.v),
                  BlocSelector<
                          ViewScheduledDateSchedulerOnlyBloc,
                          ViewScheduledDateSchedulerOnlyState,
                          ViewScheduledDateSchedulerOnlyModel?>(
                      selector: (state) =>
                          state.viewScheduledDateSchedulerOnlyModelObj,
                      builder:
                          (context, viewScheduledDateSchedulerOnlyModelObj) {
                        return ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 10.v);
                            },
                            itemCount: viewScheduledDateSchedulerOnlyModelObj
                                    ?.listviewItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              final model =
                                  viewScheduledDateSchedulerOnlyModelObj
                                          ?.listviewItemList[index] ??
                                      ListviewItemModel();
                              return ListviewItemWidget(model);
                            });
                      }),
                  SizedBox(height: 10.v)
                ])));
  }
}
