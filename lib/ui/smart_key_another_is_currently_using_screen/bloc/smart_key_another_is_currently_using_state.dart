// ignore_for_file: must_be_immutable

part of 'smart_key_another_is_currently_using_bloc.dart';

/// Represents the state of SmartKeyAnotherIsCurrentlyUsing in the application.
class SmartKeyAnotherIsCurrentlyUsingState extends Equatable {
  SmartKeyAnotherIsCurrentlyUsingState(
      {this.smartKeyAnotherIsCurrentlyUsingModelObj});

  SmartKeyAnotherIsCurrentlyUsingModel? smartKeyAnotherIsCurrentlyUsingModelObj;

  @override
  List<Object?> get props => [
        smartKeyAnotherIsCurrentlyUsingModelObj,
      ];
  SmartKeyAnotherIsCurrentlyUsingState copyWith(
      {SmartKeyAnotherIsCurrentlyUsingModel?
          smartKeyAnotherIsCurrentlyUsingModelObj}) {
    return SmartKeyAnotherIsCurrentlyUsingState(
      smartKeyAnotherIsCurrentlyUsingModelObj:
          smartKeyAnotherIsCurrentlyUsingModelObj ??
              this.smartKeyAnotherIsCurrentlyUsingModelObj,
    );
  }
}
