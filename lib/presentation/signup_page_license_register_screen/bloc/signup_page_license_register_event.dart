// ignore_for_file: must_be_immutable

part of 'signup_page_license_register_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupPageLicenseRegister widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageLicenseRegisterEvent extends Equatable {}

/// Event that is dispatched when the SignupPageLicenseRegister widget is first created.
class SignupPageLicenseRegisterInitialEvent
    extends SignupPageLicenseRegisterEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SignupPageLicenseRegisterEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends SignupPageLicenseRegisterEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
