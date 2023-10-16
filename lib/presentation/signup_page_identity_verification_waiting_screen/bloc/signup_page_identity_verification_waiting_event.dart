// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_waiting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SignupPageIdentityVerificationWaiting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageIdentityVerificationWaitingEvent extends Equatable {}

/// Event that is dispatched when the SignupPageIdentityVerificationWaiting widget is first created.
class SignupPageIdentityVerificationWaitingInitialEvent
    extends SignupPageIdentityVerificationWaitingEvent {
  @override
  List<Object?> get props => [];
}
