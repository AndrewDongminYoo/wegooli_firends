import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_terms_bottomsheet_screen/models/signup_page_identity_verification_terms_bottomsheet_model.dart';
part 'signup_page_identity_verification_terms_bottomsheet_event.dart';
part 'signup_page_identity_verification_terms_bottomsheet_state.dart';

/// A bloc that manages the state of a SignupPageIdentityVerificationTermsBottomsheet according to the event that is dispatched to it.
class SignupPageIdentityVerificationTermsBottomsheetBloc extends Bloc<
    SignupPageIdentityVerificationTermsBottomsheetEvent,
    SignupPageIdentityVerificationTermsBottomsheetState> {
  SignupPageIdentityVerificationTermsBottomsheetBloc(
      SignupPageIdentityVerificationTermsBottomsheetState initialState)
      : super(initialState) {
    on<SignupPageIdentityVerificationTermsBottomsheetInitialEvent>(
        _onInitialize);
  }

  void _onInitialize(
    SignupPageIdentityVerificationTermsBottomsheetInitialEvent event,
    Emitter<SignupPageIdentityVerificationTermsBottomsheetState> emit,
  ) async {
    emit(state.copyWith(tfController: TextEditingController()));
  }
}
