import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/signup_page_license_register_screen/models/signup_page_license_register_model.dart';
part 'signup_page_license_register_event.dart';
part 'signup_page_license_register_state.dart';

/// A bloc that manages the state of a SignupPageLicenseRegister according to the event that is dispatched to it.
class SignupPageLicenseRegisterBloc extends Bloc<SignupPageLicenseRegisterEvent,
    SignupPageLicenseRegisterState> {
  SignupPageLicenseRegisterBloc(SignupPageLicenseRegisterState initialState)
      : super(initialState) {
    on<SignupPageLicenseRegisterInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  Future<void> _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<SignupPageLicenseRegisterState> emit,
  ) async {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  Future<void> _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<SignupPageLicenseRegisterState> emit,
  ) async {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: 'Item One', isSelected: true),
      SelectionPopupModel(id: 2, title: 'Item Two'),
      SelectionPopupModel(id: 3, title: 'Item Three')
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: 'Item One', isSelected: true),
      SelectionPopupModel(id: 2, title: 'Item Two'),
      SelectionPopupModel(id: 3, title: 'Item Three')
    ];
  }

  Future<void> _onInitialize(
    SignupPageLicenseRegisterInitialEvent event,
    Emitter<SignupPageLicenseRegisterState> emit,
  ) async {
    emit(state.copyWith(
        licensenumberinController: TextEditingController(),
        tfController: TextEditingController(),
        licensedateinpuController: TextEditingController()));
    emit(state.copyWith(
        signupPageLicenseRegisterModelObj:
            state.signupPageLicenseRegisterModelObj?.copyWith(
                dropdownItemList: fillDropdownItemList(),
                dropdownItemList1: fillDropdownItemList1())));
  }
}
