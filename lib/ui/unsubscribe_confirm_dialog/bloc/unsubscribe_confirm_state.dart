// ignore_for_file: must_be_immutable

part of 'unsubscribe_confirm_bloc.dart';

/// Represents the state of UnsubscribeConfirm in the application.
class UnsubscribeConfirmState extends Equatable {
  UnsubscribeConfirmState({this.unsubscribeConfirmModelObj});

  UnsubscribeConfirmModel? unsubscribeConfirmModelObj;

  @override
  List<Object?> get props => [
        unsubscribeConfirmModelObj,
      ];
  UnsubscribeConfirmState copyWith(
      {UnsubscribeConfirmModel? unsubscribeConfirmModelObj}) {
    return UnsubscribeConfirmState(
      unsubscribeConfirmModelObj:
          unsubscribeConfirmModelObj ?? this.unsubscribeConfirmModelObj,
    );
  }
}
