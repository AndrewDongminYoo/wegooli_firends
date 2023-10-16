// ignore_for_file: must_be_immutable

part of 'k102_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K102 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K102Event extends Equatable {}

/// Event that is dispatched when the K102 widget is first created.
class K102InitialEvent extends K102Event {
  @override
  List<Object?> get props => [];
}

/// Event for changing radio button
class ChangeRadioButtonEvent extends K102Event {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing radio button
class ChangeRadioButton1Event extends K102Event {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
