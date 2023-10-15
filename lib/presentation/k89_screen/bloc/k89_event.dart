// ignore_for_file: must_be_immutable

part of 'k89_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K89 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K89Event extends Equatable {}

/// Event that is dispatched when the K89 widget is first created.
class K89InitialEvent extends K89Event {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends K89Event {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends K89Event {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
