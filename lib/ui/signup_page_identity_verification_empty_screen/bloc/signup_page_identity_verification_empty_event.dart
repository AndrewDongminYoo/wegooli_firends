// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SignupPageIdentityVerificationEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageIdentityVerificationEmptyEvent extends Equatable {}

/// Event that is dispatched when the SignupPageIdentityVerificationEmpty widget is first created.
class SignupPageIdentityVerificationEmptyInitialEvent
    extends SignupPageIdentityVerificationEmptyEvent {
  @override
  List<Object?> get props => [];
}
