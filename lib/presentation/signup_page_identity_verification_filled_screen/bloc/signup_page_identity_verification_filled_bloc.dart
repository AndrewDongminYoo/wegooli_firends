import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_filled_screen/models/signup_page_identity_verification_filled_model.dart';
part 'signup_page_identity_verification_filled_event.dart';
part 'signup_page_identity_verification_filled_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationFilled according to the event that is dispatched to it.
class SignupPageIdentityVerificationFilledBloc extends Bloc<
    SignupPageIdentityVerificationFilledEvent,
    SignupPageIdentityVerificationFilledState> {
  SignupPageIdentityVerificationFilledBloc(
      SignupPageIdentityVerificationFilledState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationFilledInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    SignupPageIdentityVerificationFilledInitialEvent event,
    Emitter<SignupPageIdentityVerificationFilledState> emit,
  ) async {
    emit(state.copyWith(
        nameoneController: TextEditingController(),
        phoneinfooneController: TextEditingController()));
  }
}
