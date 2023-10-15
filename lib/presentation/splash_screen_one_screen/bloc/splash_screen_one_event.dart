// ignore_for_file: must_be_immutable

part of 'splash_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashScreenOneEvent extends Equatable {}

/// Event that is dispatched when the SplashScreenOne widget is first created.
class SplashScreenOneInitialEvent extends SplashScreenOneEvent {
  @override
  List<Object?> get props => [];
}
