// ignore_for_file: must_be_immutable

part of 'schedules_view_scheduled_date_scheduler_only_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SchedulesViewScheduledDateSchedulerOnly widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesViewScheduledDateSchedulerOnlyEvent extends Equatable {}

/// Event that is dispatched when the SchedulesViewScheduledDateSchedulerOnly widget is first created.
class SchedulesViewScheduledDateSchedulerOnlyInitialEvent
    extends SchedulesViewScheduledDateSchedulerOnlyEvent {
  @override
  List<Object?> get props => [];
}
