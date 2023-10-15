// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_filled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupPageIdentityVerificationFilled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageIdentityVerificationFilledEvent extends Equatable {}

/// Event that is dispatched when the SignupPageIdentityVerificationFilled widget is first created.
class SignupPageIdentityVerificationFilledInitialEvent
    extends SignupPageIdentityVerificationFilledEvent {
  @override
  List<Object?> get props => [];
}
