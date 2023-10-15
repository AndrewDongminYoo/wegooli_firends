// ignore_for_file: must_be_immutable

part of 'schedules_team_is_full_bloc.dart';

/// Represents the state of SchedulesTeamIsFull in the application.
class SchedulesTeamIsFullState extends Equatable {
  SchedulesTeamIsFullState({this.schedulesTeamIsFullModelObj});

  SchedulesTeamIsFullModel? schedulesTeamIsFullModelObj;

  @override
  List<Object?> get props => [
        schedulesTeamIsFullModelObj,
      ];
  SchedulesTeamIsFullState copyWith(
      {SchedulesTeamIsFullModel? schedulesTeamIsFullModelObj}) {
    return SchedulesTeamIsFullState(
      schedulesTeamIsFullModelObj:
          schedulesTeamIsFullModelObj ?? this.schedulesTeamIsFullModelObj,
    );
  }
}
