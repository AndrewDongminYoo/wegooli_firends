import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/view_scheduled_date_scheduler_only_dialog/models/listview_item_model.dart';
import 'package:wegooli_friends_app/presentation/view_scheduled_date_scheduler_only_dialog/models/view_scheduled_date_scheduler_only_model.dart';
part 'view_scheduled_date_scheduler_only_event.dart';
part 'view_scheduled_date_scheduler_only_state.dart';

/// A bloc that manages the state of a ViewScheduledDateSchedulerOnly according to the event that is dispatched to it.
class ViewScheduledDateSchedulerOnlyBloc extends Bloc<
    ViewScheduledDateSchedulerOnlyEvent, ViewScheduledDateSchedulerOnlyState> {
  ViewScheduledDateSchedulerOnlyBloc(
      ViewScheduledDateSchedulerOnlyState initialState)
      : super(initialState) {
    on<ViewScheduledDateSchedulerOnlyInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    ViewScheduledDateSchedulerOnlyInitialEvent event,
    Emitter<ViewScheduledDateSchedulerOnlyState> emit,
  ) async {
    emit(state.copyWith(
        viewScheduledDateSchedulerOnlyModelObj: state
            .viewScheduledDateSchedulerOnlyModelObj
            ?.copyWith(listviewItemList: fillListviewItemList())));
  }

  List<ListviewItemModel> fillListviewItemList() {
    return List.generate(3, (index) => ListviewItemModel());
  }
}
