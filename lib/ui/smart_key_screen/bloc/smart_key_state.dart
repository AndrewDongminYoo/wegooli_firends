// ignore_for_file: must_be_immutable

part of 'smart_key_bloc.dart';

/// Represents the state of SmartKey in the application.
class SmartKeyState extends Equatable {
  SmartKeyState({this.smartKeyModelObj});

  SmartKeyModel? smartKeyModelObj;

  @override
  List<Object?> get props => [
        smartKeyModelObj,
      ];
  SmartKeyState copyWith({SmartKeyModel? smartKeyModelObj}) {
    return SmartKeyState(
      smartKeyModelObj: smartKeyModelObj ?? this.smartKeyModelObj,
    );
  }
}
