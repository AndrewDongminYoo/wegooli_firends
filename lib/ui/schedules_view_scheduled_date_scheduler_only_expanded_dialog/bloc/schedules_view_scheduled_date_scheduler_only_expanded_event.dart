// ignore_for_file: must_be_immutable

part of 'schedules_view_scheduled_date_scheduler_only_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SchedulesViewScheduledDateSchedulerOnlyExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesViewScheduledDateSchedulerOnlyExpandedEvent
    extends Equatable {}

/// Event that is dispatched when the SchedulesViewScheduledDateSchedulerOnlyExpanded widget is first created.
class SchedulesViewScheduledDateSchedulerOnlyExpandedInitialEvent
    extends SchedulesViewScheduledDateSchedulerOnlyExpandedEvent {
  @override
  List<Object?> get props => [];
}

/// event for dropdown selection
class ChangeDropDownEvent
    extends SchedulesViewScheduledDateSchedulerOnlyExpandedEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
