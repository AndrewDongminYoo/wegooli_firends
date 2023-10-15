// ignore_for_file: must_be_immutable

part of 'unsubscribe_bloc.dart';

/// Represents the state of Unsubscribe in the application.
class UnsubscribeState extends Equatable {
  UnsubscribeState({this.unsubscribeModelObj});

  UnsubscribeModel? unsubscribeModelObj;

  @override
  List<Object?> get props => [
        unsubscribeModelObj,
      ];
  UnsubscribeState copyWith({UnsubscribeModel? unsubscribeModelObj}) {
    return UnsubscribeState(
      unsubscribeModelObj: unsubscribeModelObj ?? this.unsubscribeModelObj,
    );
  }
}
