// ignore_for_file: must_be_immutable

part of 'signup_page_identity_verification_terms_bottomsheet_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupPageIdentityVerificationTermsBottomsheet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupPageIdentityVerificationTermsBottomsheetEvent
    extends Equatable {}

/// Event that is dispatched when the SignupPageIdentityVerificationTermsBottomsheet widget is first created.
class SignupPageIdentityVerificationTermsBottomsheetInitialEvent
    extends SignupPageIdentityVerificationTermsBottomsheetEvent {
  @override
  List<Object?> get props => [];
}
