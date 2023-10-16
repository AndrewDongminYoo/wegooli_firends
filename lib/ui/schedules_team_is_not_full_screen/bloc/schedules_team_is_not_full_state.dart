// ignore_for_file: must_be_immutable

part of 'schedules_team_is_not_full_bloc.dart';

/// Represents the state of SchedulesTeamIsNotFull in the application.
class SchedulesTeamIsNotFullState extends Equatable {
  SchedulesTeamIsNotFullState({this.schedulesTeamIsNotFullModelObj});

  SchedulesTeamIsNotFullModel? schedulesTeamIsNotFullModelObj;

  @override
  List<Object?> get props => [
        schedulesTeamIsNotFullModelObj,
      ];
  SchedulesTeamIsNotFullState copyWith(
      {SchedulesTeamIsNotFullModel? schedulesTeamIsNotFullModelObj}) {
    return SchedulesTeamIsNotFullState(
      schedulesTeamIsNotFullModelObj:
          schedulesTeamIsNotFullModelObj ?? this.schedulesTeamIsNotFullModelObj,
    );
  }
}
