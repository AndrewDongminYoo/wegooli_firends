// ignore_for_file: must_be_immutable

part of 'signup_page_personal_info_form_zip_code_bloc.dart';

/// Represents the state of SignupPagePersonalInfoFormZipCode in the application.
class SignupPagePersonalInfoFormZipCodeState extends Equatable {
  SignupPagePersonalInfoFormZipCodeState({
    this.postalcodeoneController,
    this.defaultaddressController,
    this.detailedaddressController,
    this.emailaddressController,
    this.eyecrossedoutController,
    this.passwordreentryController,
    this.nicknameinputController,
    this.signupPagePersonalInfoFormZipCodeModelObj,
  });

  TextEditingController? postalcodeoneController;

  TextEditingController? defaultaddressController;

  TextEditingController? detailedaddressController;

  TextEditingController? emailaddressController;

  TextEditingController? eyecrossedoutController;

  TextEditingController? passwordreentryController;

  TextEditingController? nicknameinputController;

  SignupPagePersonalInfoFormZipCodeModel?
      signupPagePersonalInfoFormZipCodeModelObj;

  @override
  List<Object?> get props => [
        postalcodeoneController,
        defaultaddressController,
        detailedaddressController,
        emailaddressController,
        eyecrossedoutController,
        passwordreentryController,
        nicknameinputController,
        signupPagePersonalInfoFormZipCodeModelObj,
      ];
  SignupPagePersonalInfoFormZipCodeState copyWith({
    TextEditingController? postalcodeoneController,
    TextEditingController? defaultaddressController,
    TextEditingController? detailedaddressController,
    TextEditingController? emailaddressController,
    TextEditingController? eyecrossedoutController,
    TextEditingController? passwordreentryController,
    TextEditingController? nicknameinputController,
    SignupPagePersonalInfoFormZipCodeModel?
        signupPagePersonalInfoFormZipCodeModelObj,
  }) {
    return SignupPagePersonalInfoFormZipCodeState(
      postalcodeoneController:
          postalcodeoneController ?? this.postalcodeoneController,
      defaultaddressController:
          defaultaddressController ?? this.defaultaddressController,
      detailedaddressController:
          detailedaddressController ?? this.detailedaddressController,
      emailaddressController:
          emailaddressController ?? this.emailaddressController,
      eyecrossedoutController:
          eyecrossedoutController ?? this.eyecrossedoutController,
      passwordreentryController:
          passwordreentryController ?? this.passwordreentryController,
      nicknameinputController:
          nicknameinputController ?? this.nicknameinputController,
      signupPagePersonalInfoFormZipCodeModelObj:
          signupPagePersonalInfoFormZipCodeModelObj ??
              this.signupPagePersonalInfoFormZipCodeModelObj,
    );
  }
}
