// ignore_for_file: must_be_immutable

part of 'gas_indicator_icon_bloc.dart';

/// Represents the state of GasIndicatorIcon in the application.
class GasIndicatorIconState extends Equatable {
  GasIndicatorIconState({this.gasIndicatorIconModelObj});

  GasIndicatorIconModel? gasIndicatorIconModelObj;

  @override
  List<Object?> get props => [
        gasIndicatorIconModelObj,
      ];
  GasIndicatorIconState copyWith(
      {GasIndicatorIconModel? gasIndicatorIconModelObj}) {
    return GasIndicatorIconState(
      gasIndicatorIconModelObj:
          gasIndicatorIconModelObj ?? this.gasIndicatorIconModelObj,
    );
  }
}
