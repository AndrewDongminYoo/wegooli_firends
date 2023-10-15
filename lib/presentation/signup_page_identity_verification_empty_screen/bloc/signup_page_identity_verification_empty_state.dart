// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_empty_bloc.dart';

/// Represents the state of SignupPageIdentityVerificationEmpty in the application.
class SignupPageIdentityVerificationEmptyState extends Equatable {
  SignupPageIdentityVerificationEmptyState({
    this.nameinputoneController,
    this.phonenumberoneController,
    this.signupPageIdentityVerificationEmptyModelObj,
  });

  TextEditingController? nameinputoneController;

  TextEditingController? phonenumberoneController;

  SignupPageIdentityVerificationEmptyModel?
      signupPageIdentityVerificationEmptyModelObj;

  @override
  List<Object?> get props => [
        nameinputoneController,
        phonenumberoneController,
        signupPageIdentityVerificationEmptyModelObj,
      ];
  SignupPageIdentityVerificationEmptyState copyWith({
    TextEditingController? nameinputoneController,
    TextEditingController? phonenumberoneController,
    SignupPageIdentityVerificationEmptyModel?
        signupPageIdentityVerificationEmptyModelObj,
  }) {
    return SignupPageIdentityVerificationEmptyState(
      nameinputoneController:
          nameinputoneController ?? this.nameinputoneController,
      phonenumberoneController:
          phonenumberoneController ?? this.phonenumberoneController,
      signupPageIdentityVerificationEmptyModelObj:
          signupPageIdentityVerificationEmptyModelObj ??
              this.signupPageIdentityVerificationEmptyModelObj,
    );
  }
}
