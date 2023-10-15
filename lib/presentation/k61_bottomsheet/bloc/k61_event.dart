// ignore_for_file: must_be_immutable

part of 'k61_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K61 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K61Event extends Equatable {}

/// Event that is dispatched when the K61 widget is first created.
class K61InitialEvent extends K61Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends K61Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends K61Event {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends K61Event {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox3Event extends K61Event {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox4Event extends K61Event {
  ChangeCheckBox4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox5Event extends K61Event {
  ChangeCheckBox5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox6Event extends K61Event {
  ChangeCheckBox6Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
