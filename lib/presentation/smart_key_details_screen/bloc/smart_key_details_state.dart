// ignore_for_file: must_be_immutable

part of 'smart_key_details_bloc.dart';

/// Represents the state of SmartKeyDetails in the application.
class SmartKeyDetailsState extends Equatable {
  SmartKeyDetailsState({this.smartKeyDetailsModelObj});

  SmartKeyDetailsModel? smartKeyDetailsModelObj;

  @override
  List<Object?> get props => [
        smartKeyDetailsModelObj,
      ];
  SmartKeyDetailsState copyWith(
      {SmartKeyDetailsModel? smartKeyDetailsModelObj}) {
    return SmartKeyDetailsState(
      smartKeyDetailsModelObj:
          smartKeyDetailsModelObj ?? this.smartKeyDetailsModelObj,
    );
  }
}
