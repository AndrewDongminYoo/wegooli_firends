// ignore_for_file: must_be_immutable

part of 'signin_page_bloc.dart';

/// Represents the state of SigninPage in the application.
class SigninPageState extends Equatable {
  SigninPageState({
    this.emailinputoneController,
    this.passwordinputController,
    this.signinPageModelObj,
  });

  TextEditingController? emailinputoneController;

  TextEditingController? passwordinputController;

  SigninPageModel? signinPageModelObj;

  @override
  List<Object?> get props => [
        emailinputoneController,
        passwordinputController,
        signinPageModelObj,
      ];
  SigninPageState copyWith({
    TextEditingController? emailinputoneController,
    TextEditingController? passwordinputController,
    SigninPageModel? signinPageModelObj,
  }) {
    return SigninPageState(
      emailinputoneController:
          emailinputoneController ?? this.emailinputoneController,
      passwordinputController:
          passwordinputController ?? this.passwordinputController,
      signinPageModelObj: signinPageModelObj ?? this.signinPageModelObj,
    );
  }
}
