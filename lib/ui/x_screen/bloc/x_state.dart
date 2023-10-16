// ignore_for_file: must_be_immutable

part of 'x_bloc.dart';

/// Represents the state of X in the application.
class XState extends Equatable {
  XState({this.xModelObj});

  XModel? xModelObj;

  @override
  List<Object?> get props => [
        xModelObj,
      ];
  XState copyWith({XModel? xModelObj}) {
    return XState(
      xModelObj: xModelObj ?? this.xModelObj,
    );
  }
}
