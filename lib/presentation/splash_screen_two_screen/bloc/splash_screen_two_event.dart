// ignore_for_file: must_be_immutable

part of 'splash_screen_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashScreenTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashScreenTwoEvent extends Equatable {}

/// Event that is dispatched when the SplashScreenTwo widget is first created.
class SplashScreenTwoInitialEvent extends SplashScreenTwoEvent {
  @override
  List<Object?> get props => [];
}
