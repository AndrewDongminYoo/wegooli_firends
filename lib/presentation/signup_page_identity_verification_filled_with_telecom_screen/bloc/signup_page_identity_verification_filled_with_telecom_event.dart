// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_filled_with_telecom_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SignupPageIdentityVerificationFilledWithTelecom widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageIdentityVerificationFilledWithTelecomEvent
    extends Equatable {}

/// Event that is dispatched when the SignupPageIdentityVerificationFilledWithTelecom widget is first created.
class SignupPageIdentityVerificationFilledWithTelecomInitialEvent
    extends SignupPageIdentityVerificationFilledWithTelecomEvent {
  @override
  List<Object?> get props => [];
}
