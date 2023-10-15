// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_filled_bloc.dart';

/// Represents the state of SignupPageIdentityVerificationFilled in the application.
class SignupPageIdentityVerificationFilledState extends Equatable {
  SignupPageIdentityVerificationFilledState({
    this.nameoneController,
    this.phoneinfooneController,
    this.signupPageIdentityVerificationFilledModelObj,
  });

  TextEditingController? nameoneController;

  TextEditingController? phoneinfooneController;

  SignupPageIdentityVerificationFilledModel?
      signupPageIdentityVerificationFilledModelObj;

  @override
  List<Object?> get props => [
        nameoneController,
        phoneinfooneController,
        signupPageIdentityVerificationFilledModelObj,
      ];
  SignupPageIdentityVerificationFilledState copyWith({
    TextEditingController? nameoneController,
    TextEditingController? phoneinfooneController,
    SignupPageIdentityVerificationFilledModel?
        signupPageIdentityVerificationFilledModelObj,
  }) {
    return SignupPageIdentityVerificationFilledState(
      nameoneController: nameoneController ?? this.nameoneController,
      phoneinfooneController:
          phoneinfooneController ?? this.phoneinfooneController,
      signupPageIdentityVerificationFilledModelObj:
          signupPageIdentityVerificationFilledModelObj ??
              this.signupPageIdentityVerificationFilledModelObj,
    );
  }
}
