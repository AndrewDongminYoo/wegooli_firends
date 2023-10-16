import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_filled_with_telecom_screen/models/signup_page_identity_verification_filled_with_telecom_model.dart';
part 'signup_page_identity_verification_filled_with_telecom_event.dart';
part 'signup_page_identity_verification_filled_with_telecom_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationFilledWithTelecom according to the event that is dispatched to it.
class SignupPageIdentityVerificationFilledWithTelecomBloc extends Bloc<
    SignupPageIdentityVerificationFilledWithTelecomEvent,
    SignupPageIdentityVerificationFilledWithTelecomState> {
  SignupPageIdentityVerificationFilledWithTelecomBloc(
      SignupPageIdentityVerificationFilledWithTelecomState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationFilledWithTelecomInitialEvent>(
        _onInitialize);
  }

  void _onInitialize(
    SignupPageIdentityVerificationFilledWithTelecomInitialEvent event,
    Emitter<SignupPageIdentityVerificationFilledWithTelecomState> emit,
  ) async {
    emit(state.copyWith(
        nameoneController: TextEditingController(),
        phonenumberoneController: TextEditingController()));
  }
}
