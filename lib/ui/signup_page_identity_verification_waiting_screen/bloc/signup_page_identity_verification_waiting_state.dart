// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_waiting_bloc.dart';

/// Represents the state of SignupPageIdentityVerificationWaiting in the application.
class SignupPageIdentityVerificationWaitingState extends Equatable {
  SignupPageIdentityVerificationWaitingState({
    this.nameoneController,
    this.zipcodeController,
    this.phonenumberoneController,
    this.signupPageIdentityVerificationWaitingModelObj,
  });

  TextEditingController? nameoneController;

  TextEditingController? zipcodeController;

  TextEditingController? phonenumberoneController;

  SignupPageIdentityVerificationWaitingModel?
      signupPageIdentityVerificationWaitingModelObj;

  @override
  List<Object?> get props => [
        nameoneController,
        zipcodeController,
        phonenumberoneController,
        signupPageIdentityVerificationWaitingModelObj,
      ];
  SignupPageIdentityVerificationWaitingState copyWith({
    TextEditingController? nameoneController,
    TextEditingController? zipcodeController,
    TextEditingController? phonenumberoneController,
    SignupPageIdentityVerificationWaitingModel?
        signupPageIdentityVerificationWaitingModelObj,
  }) {
    return SignupPageIdentityVerificationWaitingState(
      nameoneController: nameoneController ?? this.nameoneController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      phonenumberoneController:
          phonenumberoneController ?? this.phonenumberoneController,
      signupPageIdentityVerificationWaitingModelObj:
          signupPageIdentityVerificationWaitingModelObj ??
              this.signupPageIdentityVerificationWaitingModelObj,
    );
  }
}
