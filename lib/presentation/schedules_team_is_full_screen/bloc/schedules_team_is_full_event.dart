// ignore_for_file: must_be_immutable

part of 'schedules_team_is_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SchedulesTeamIsFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesTeamIsFullEvent extends Equatable {}

/// Event that is dispatched when the SchedulesTeamIsFull widget is first created.
class SchedulesTeamIsFullInitialEvent extends SchedulesTeamIsFullEvent {
  @override
  List<Object?> get props => [];
}
