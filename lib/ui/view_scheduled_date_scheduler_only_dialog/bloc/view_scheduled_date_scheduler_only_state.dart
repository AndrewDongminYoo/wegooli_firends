// ignore_for_file: must_be_immutable

part of 'view_scheduled_date_scheduler_only_bloc.dart';

/// Represents the state of ViewScheduledDateSchedulerOnly in the application.
class ViewScheduledDateSchedulerOnlyState extends Equatable {
  ViewScheduledDateSchedulerOnlyState(
      {this.viewScheduledDateSchedulerOnlyModelObj});

  ViewScheduledDateSchedulerOnlyModel? viewScheduledDateSchedulerOnlyModelObj;

  @override
  List<Object?> get props => [
        viewScheduledDateSchedulerOnlyModelObj,
      ];
  ViewScheduledDateSchedulerOnlyState copyWith(
      {ViewScheduledDateSchedulerOnlyModel?
          viewScheduledDateSchedulerOnlyModelObj}) {
    return ViewScheduledDateSchedulerOnlyState(
      viewScheduledDateSchedulerOnlyModelObj:
          viewScheduledDateSchedulerOnlyModelObj ??
              this.viewScheduledDateSchedulerOnlyModelObj,
    );
  }
}
