// ignore_for_file: must_be_immutable

part of 'schedules_team_is_not_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SchedulesTeamIsNotFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SchedulesTeamIsNotFullEvent extends Equatable {}

/// Event that is dispatched when the SchedulesTeamIsNotFull widget is first created.
class SchedulesTeamIsNotFullInitialEvent extends SchedulesTeamIsNotFullEvent {
  @override
  List<Object?> get props => [];
}
