// ignore_for_file: must_be_immutable

part of 'k76_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K76 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K76Event extends Equatable {}

/// Event that is dispatched when the K76 widget is first created.
class K76InitialEvent extends K76Event {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends K76Event {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends K76Event {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends K76Event {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
