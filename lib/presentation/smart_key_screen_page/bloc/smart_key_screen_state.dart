// ignore_for_file: must_be_immutable

part of 'smart_key_screen_bloc.dart';

/// Represents the state of SmartKeyScreen in the application.
class SmartKeyScreenState extends Equatable {
  SmartKeyScreenState({this.smartKeyScreenModelObj});

  SmartKeyScreenModel? smartKeyScreenModelObj;

  @override
  List<Object?> get props => [
        smartKeyScreenModelObj,
      ];
  SmartKeyScreenState copyWith({SmartKeyScreenModel? smartKeyScreenModelObj}) {
    return SmartKeyScreenState(
      smartKeyScreenModelObj:
          smartKeyScreenModelObj ?? this.smartKeyScreenModelObj,
    );
  }
}
