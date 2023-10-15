// ignore_for_file: must_be_immutable

part of 'schedules_container_bloc.dart';

/// Represents the state of SchedulesContainer in the application.
class SchedulesContainerState extends Equatable {
  SchedulesContainerState({this.schedulesContainerModelObj});

  SchedulesContainerModel? schedulesContainerModelObj;

  @override
  List<Object?> get props => [
        schedulesContainerModelObj,
      ];
  SchedulesContainerState copyWith(
      {SchedulesContainerModel? schedulesContainerModelObj}) {
    return SchedulesContainerState(
      schedulesContainerModelObj:
          schedulesContainerModelObj ?? this.schedulesContainerModelObj,
    );
  }
}
