// ignore_for_file: must_be_immutable

part of 'schedules_view_scheduled_date_scheduler_only_bloc.dart';

/// Represents the state of SchedulesViewScheduledDateSchedulerOnly in the application.
class SchedulesViewScheduledDateSchedulerOnlyState extends Equatable {
  SchedulesViewScheduledDateSchedulerOnlyState(
      {this.schedulesViewScheduledDateSchedulerOnlyModelObj});

  SchedulesViewScheduledDateSchedulerOnlyModel?
      schedulesViewScheduledDateSchedulerOnlyModelObj;

  @override
  List<Object?> get props => [
        schedulesViewScheduledDateSchedulerOnlyModelObj,
      ];
  SchedulesViewScheduledDateSchedulerOnlyState copyWith(
      {SchedulesViewScheduledDateSchedulerOnlyModel?
          schedulesViewScheduledDateSchedulerOnlyModelObj}) {
    return SchedulesViewScheduledDateSchedulerOnlyState(
      schedulesViewScheduledDateSchedulerOnlyModelObj:
          schedulesViewScheduledDateSchedulerOnlyModelObj ??
              this.schedulesViewScheduledDateSchedulerOnlyModelObj,
    );
  }
}
