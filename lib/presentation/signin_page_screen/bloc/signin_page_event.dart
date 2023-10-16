// ignore_for_file: must_be_immutable

part of 'signin_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SigninPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SigninPageEvent extends Equatable {}

/// Event that is dispatched when the SigninPage widget is first created.
class SigninPageInitialEvent extends SigninPageEvent {
  @override
  List<Object?> get props => [];
}
