// ignore_for_file: must_be_immutable

part of 'schedules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Schedules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesEvent extends Equatable {}

/// Event that is dispatched when the Schedules widget is first created.
class SchedulesInitialEvent extends SchedulesEvent {
  @override
  List<Object?> get props => [];
}
