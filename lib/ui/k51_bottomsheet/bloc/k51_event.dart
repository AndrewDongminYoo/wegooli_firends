// ignore_for_file: must_be_immutable

part of 'k51_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K51 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K51Event extends Equatable {}

/// Event that is dispatched when the K51 widget is first created.
class K51InitialEvent extends K51Event {
  @override
  List<Object?> get props => [];
}

/// Event for changing checkbox
class ChangeCheckBoxEvent extends K51Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox1Event extends K51Event {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox2Event extends K51Event {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox3Event extends K51Event {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox4Event extends K51Event {
  ChangeCheckBox4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox5Event extends K51Event {
  ChangeCheckBox5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox6Event extends K51Event {
  ChangeCheckBox6Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
