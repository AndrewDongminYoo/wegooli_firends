// ignore_for_file: must_be_immutable

part of 'signup_page_personal_info_form_zip_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SignupPagePersonalInfoFormZipCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPagePersonalInfoFormZipCodeEvent extends Equatable {}

/// Event that is dispatched when the SignupPagePersonalInfoFormZipCode widget is first created.
class SignupPagePersonalInfoFormZipCodeInitialEvent
    extends SignupPagePersonalInfoFormZipCodeEvent {
  @override
  List<Object?> get props => [];
}
