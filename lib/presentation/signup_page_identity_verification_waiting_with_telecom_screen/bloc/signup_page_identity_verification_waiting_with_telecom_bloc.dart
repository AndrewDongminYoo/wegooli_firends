import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_waiting_with_telecom_screen/models/signup_page_identity_verification_waiting_with_telecom_model.dart';
part 'signup_page_identity_verification_waiting_with_telecom_event.dart';
part 'signup_page_identity_verification_waiting_with_telecom_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationWaitingWithTelecom according to the event that is dispatched to it.
class SignupPageIdentityVerificationWaitingWithTelecomBloc extends Bloc<
    SignupPageIdentityVerificationWaitingWithTelecomEvent,
    SignupPageIdentityVerificationWaitingWithTelecomState> {
  SignupPageIdentityVerificationWaitingWithTelecomBloc(
      SignupPageIdentityVerificationWaitingWithTelecomState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationWaitingWithTelecomInitialEvent>(
        _onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<SignupPageIdentityVerificationWaitingWithTelecomState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: 'Item One', isSelected: true),
      SelectionPopupModel(id: 2, title: 'Item Two'),
      SelectionPopupModel(id: 3, title: 'Item Three')
    ];
  }

  void _onInitialize(
    SignupPageIdentityVerificationWaitingWithTelecomInitialEvent event,
    Emitter<SignupPageIdentityVerificationWaitingWithTelecomState> emit,
  ) async {
    emit(state.copyWith(
        nameoneController: TextEditingController(),
        phonenumberoneController: TextEditingController()));
    emit(state.copyWith(
        signupPageIdentityVerificationWaitingWithTelecomModelObj: state
            .signupPageIdentityVerificationWaitingWithTelecomModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }
}
