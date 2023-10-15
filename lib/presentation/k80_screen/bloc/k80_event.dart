// ignore_for_file: must_be_immutable

part of 'k80_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K80 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K80Event extends Equatable {}

/// Event that is dispatched when the K80 widget is first created.
class K80InitialEvent extends K80Event {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends K80Event {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends K80Event {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends K80Event {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
