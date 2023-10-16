// ignore_for_file: must_be_immutable

part of 'view_scheduled_date_scheduler_only_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// ViewScheduledDateSchedulerOnly widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewScheduledDateSchedulerOnlyEvent extends Equatable {}

/// Event that is dispatched when the ViewScheduledDateSchedulerOnly widget is first created.
class ViewScheduledDateSchedulerOnlyInitialEvent
    extends ViewScheduledDateSchedulerOnlyEvent {
  @override
  List<Object?> get props => [];
}
