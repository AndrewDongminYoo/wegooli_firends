// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_waiting_with_telecom_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupPageIdentityVerificationWaitingWithTelecom widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageIdentityVerificationWaitingWithTelecomEvent
    extends Equatable {}

/// Event that is dispatched when the SignupPageIdentityVerificationWaitingWithTelecom widget is first created.
class SignupPageIdentityVerificationWaitingWithTelecomInitialEvent
    extends SignupPageIdentityVerificationWaitingWithTelecomEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent
    extends SignupPageIdentityVerificationWaitingWithTelecomEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
