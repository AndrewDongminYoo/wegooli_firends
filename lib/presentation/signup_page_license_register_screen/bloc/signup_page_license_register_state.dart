// ignore_for_file: must_be_immutable

part of 'signup_page_license_register_bloc.dart';

/// Represents the state of SignupPageLicenseRegister in the application.
class SignupPageLicenseRegisterState extends Equatable {
  SignupPageLicenseRegisterState({
    this.licensenumberinController,
    this.tfController,
    this.licensedateinpuController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.signupPageLicenseRegisterModelObj,
  });

  TextEditingController? licensenumberinController;

  TextEditingController? tfController;

  TextEditingController? licensedateinpuController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SignupPageLicenseRegisterModel? signupPageLicenseRegisterModelObj;

  @override
  List<Object?> get props => [
        licensenumberinController,
        tfController,
        licensedateinpuController,
        selectedDropDownValue,
        selectedDropDownValue1,
        signupPageLicenseRegisterModelObj,
      ];
  SignupPageLicenseRegisterState copyWith({
    TextEditingController? licensenumberinController,
    TextEditingController? tfController,
    TextEditingController? licensedateinpuController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SignupPageLicenseRegisterModel? signupPageLicenseRegisterModelObj,
  }) {
    return SignupPageLicenseRegisterState(
      licensenumberinController:
          licensenumberinController ?? this.licensenumberinController,
      tfController: tfController ?? this.tfController,
      licensedateinpuController:
          licensedateinpuController ?? this.licensedateinpuController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      signupPageLicenseRegisterModelObj: signupPageLicenseRegisterModelObj ??
          this.signupPageLicenseRegisterModelObj,
    );
  }
}
