// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_waiting_with_telecom_bloc.dart';

/// Represents the state of SignupPageIdentityVerificationWaitingWithTelecom in the application.
class SignupPageIdentityVerificationWaitingWithTelecomState extends Equatable {
  SignupPageIdentityVerificationWaitingWithTelecomState({
    this.nameoneController,
    this.phonenumberoneController,
    this.selectedDropDownValue,
    this.signupPageIdentityVerificationWaitingWithTelecomModelObj,
  });

  TextEditingController? nameoneController;

  TextEditingController? phonenumberoneController;

  SelectionPopupModel? selectedDropDownValue;

  SignupPageIdentityVerificationWaitingWithTelecomModel?
      signupPageIdentityVerificationWaitingWithTelecomModelObj;

  @override
  List<Object?> get props => [
        nameoneController,
        phonenumberoneController,
        selectedDropDownValue,
        signupPageIdentityVerificationWaitingWithTelecomModelObj,
      ];
  SignupPageIdentityVerificationWaitingWithTelecomState copyWith({
    TextEditingController? nameoneController,
    TextEditingController? phonenumberoneController,
    SelectionPopupModel? selectedDropDownValue,
    SignupPageIdentityVerificationWaitingWithTelecomModel?
        signupPageIdentityVerificationWaitingWithTelecomModelObj,
  }) {
    return SignupPageIdentityVerificationWaitingWithTelecomState(
      nameoneController: nameoneController ?? this.nameoneController,
      phonenumberoneController:
          phonenumberoneController ?? this.phonenumberoneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      signupPageIdentityVerificationWaitingWithTelecomModelObj:
          signupPageIdentityVerificationWaitingWithTelecomModelObj ??
              this.signupPageIdentityVerificationWaitingWithTelecomModelObj,
    );
  }
}
