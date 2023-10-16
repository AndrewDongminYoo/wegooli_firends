// ignore_for_file: must_be_immutable

part of 'schedules_view_scheduled_date_scheduler_only_expanded_bloc.dart';

/// Represents the state of SchedulesViewScheduledDateSchedulerOnlyExpanded in the application.
class SchedulesViewScheduledDateSchedulerOnlyExpandedState extends Equatable {
  SchedulesViewScheduledDateSchedulerOnlyExpandedState({
    this.selectedDropDownValue,
    this.schedulesViewScheduledDateSchedulerOnlyExpandedModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SchedulesViewScheduledDateSchedulerOnlyExpandedModel?
      schedulesViewScheduledDateSchedulerOnlyExpandedModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        schedulesViewScheduledDateSchedulerOnlyExpandedModelObj,
      ];
  SchedulesViewScheduledDateSchedulerOnlyExpandedState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SchedulesViewScheduledDateSchedulerOnlyExpandedModel?
        schedulesViewScheduledDateSchedulerOnlyExpandedModelObj,
  }) {
    return SchedulesViewScheduledDateSchedulerOnlyExpandedState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      schedulesViewScheduledDateSchedulerOnlyExpandedModelObj:
          schedulesViewScheduledDateSchedulerOnlyExpandedModelObj ??
              this.schedulesViewScheduledDateSchedulerOnlyExpandedModelObj,
    );
  }
}
