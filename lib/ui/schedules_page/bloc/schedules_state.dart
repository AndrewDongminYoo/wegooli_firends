// ignore_for_file: must_be_immutable

part of 'schedules_bloc.dart';

/// Represents the state of Schedules in the application.
class SchedulesState extends Equatable {
  SchedulesState({this.schedulesModelObj});

  SchedulesModel? schedulesModelObj;

  @override
  List<Object?> get props => [
        schedulesModelObj,
      ];
  SchedulesState copyWith({SchedulesModel? schedulesModelObj}) {
    return SchedulesState(
      schedulesModelObj: schedulesModelObj ?? this.schedulesModelObj,
    );
  }
}
