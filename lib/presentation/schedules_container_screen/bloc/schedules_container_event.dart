// ignore_for_file: must_be_immutable

part of 'schedules_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SchedulesContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesContainerEvent extends Equatable {}

/// Event that is dispatched when the SchedulesContainer widget is first created.
class SchedulesContainerInitialEvent extends SchedulesContainerEvent {
  @override
  List<Object?> get props => [];
}
