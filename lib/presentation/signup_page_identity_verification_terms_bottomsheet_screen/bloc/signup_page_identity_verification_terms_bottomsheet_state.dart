// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_terms_bottomsheet_bloc.dart';

/// Represents the state of SignupPageIdentityVerificationTermsBottomsheet in the application.
class SignupPageIdentityVerificationTermsBottomsheetState extends Equatable {
  SignupPageIdentityVerificationTermsBottomsheetState({
    this.tfController,
    this.signupPageIdentityVerificationTermsBottomsheetModelObj,
  });

  TextEditingController? tfController;

  SignupPageIdentityVerificationTermsBottomsheetModel?
      signupPageIdentityVerificationTermsBottomsheetModelObj;

  @override
  List<Object?> get props => [
        tfController,
        signupPageIdentityVerificationTermsBottomsheetModelObj,
      ];
  SignupPageIdentityVerificationTermsBottomsheetState copyWith({
    TextEditingController? tfController,
    SignupPageIdentityVerificationTermsBottomsheetModel?
        signupPageIdentityVerificationTermsBottomsheetModelObj,
  }) {
    return SignupPageIdentityVerificationTermsBottomsheetState(
      tfController: tfController ?? this.tfController,
      signupPageIdentityVerificationTermsBottomsheetModelObj:
          signupPageIdentityVerificationTermsBottomsheetModelObj ??
              this.signupPageIdentityVerificationTermsBottomsheetModelObj,
    );
  }
}
