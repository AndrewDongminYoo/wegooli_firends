// ignore_for_file: must_be_immutable

part of 'signup_complete_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupComplete widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupCompleteEvent extends Equatable {}

/// Event that is dispatched when the SignupComplete widget is first created.
class SignupCompleteInitialEvent extends SignupCompleteEvent {
  @override
  List<Object?> get props => [];
}
