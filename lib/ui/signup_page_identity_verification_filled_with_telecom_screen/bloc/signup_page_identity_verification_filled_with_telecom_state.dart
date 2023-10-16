// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_filled_with_telecom_bloc.dart';

/// Represents the state of SignupPageIdentityVerificationFilledWithTelecom in the application.
class SignupPageIdentityVerificationFilledWithTelecomState extends Equatable {
  SignupPageIdentityVerificationFilledWithTelecomState({
    this.nameoneController,
    this.phonenumberoneController,
    this.signupPageIdentityVerificationFilledWithTelecomModelObj,
  });

  TextEditingController? nameoneController;

  TextEditingController? phonenumberoneController;

  SignupPageIdentityVerificationFilledWithTelecomModel?
      signupPageIdentityVerificationFilledWithTelecomModelObj;

  @override
  List<Object?> get props => [
        nameoneController,
        phonenumberoneController,
        signupPageIdentityVerificationFilledWithTelecomModelObj,
      ];
  SignupPageIdentityVerificationFilledWithTelecomState copyWith({
    TextEditingController? nameoneController,
    TextEditingController? phonenumberoneController,
    SignupPageIdentityVerificationFilledWithTelecomModel?
        signupPageIdentityVerificationFilledWithTelecomModelObj,
  }) {
    return SignupPageIdentityVerificationFilledWithTelecomState(
      nameoneController: nameoneController ?? this.nameoneController,
      phonenumberoneController:
          phonenumberoneController ?? this.phonenumberoneController,
      signupPageIdentityVerificationFilledWithTelecomModelObj:
          signupPageIdentityVerificationFilledWithTelecomModelObj ??
              this.signupPageIdentityVerificationFilledWithTelecomModelObj,
    );
  }
}
