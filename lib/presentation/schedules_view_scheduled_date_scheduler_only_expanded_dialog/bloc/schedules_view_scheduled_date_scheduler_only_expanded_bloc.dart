import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/schedules_view_scheduled_date_scheduler_only_expanded_dialog/models/schedules_view_scheduled_date_scheduler_only_expanded_model.dart';
part 'schedules_view_scheduled_date_scheduler_only_expanded_event.dart';
part 'schedules_view_scheduled_date_scheduler_only_expanded_state.dart';

/// A bloc that manages the state of a SchedulesViewScheduledDateSchedulerOnlyExpanded according to the event that is dispatched to it.
class SchedulesViewScheduledDateSchedulerOnlyExpandedBloc extends Bloc<
    SchedulesViewScheduledDateSchedulerOnlyExpandedEvent,
    SchedulesViewScheduledDateSchedulerOnlyExpandedState> {
  SchedulesViewScheduledDateSchedulerOnlyExpandedBloc(
      SchedulesViewScheduledDateSchedulerOnlyExpandedState initialState)
      : super(initialState) {
    on<SchedulesViewScheduledDateSchedulerOnlyExpandedInitialEvent>(
        _onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _onInitialize(
    SchedulesViewScheduledDateSchedulerOnlyExpandedInitialEvent event,
    Emitter<SchedulesViewScheduledDateSchedulerOnlyExpandedState> emit,
  ) async {
    emit(state.copyWith(
        schedulesViewScheduledDateSchedulerOnlyExpandedModelObj: state
            .schedulesViewScheduledDateSchedulerOnlyExpandedModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  Future<void> _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<SchedulesViewScheduledDateSchedulerOnlyExpandedState> emit,
  ) async {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: 'Item One', isSelected: true),
      SelectionPopupModel(id: 2, title: 'Item Two'),
      SelectionPopupModel(id: 3, title: 'Item Three')
    ];
  }
}
