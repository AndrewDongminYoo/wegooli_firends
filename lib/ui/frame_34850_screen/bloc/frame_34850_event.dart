// ignore_for_file: must_be_immutable

part of 'frame_34850_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Frame34850 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame34850Event extends Equatable {}

/// Event that is dispatched when the Frame34850 widget is first created.
class Frame34850InitialEvent extends Frame34850Event {
  @override
  List<Object?> get props => [];
}

/// Event for changing checkbox
class ChangeCheckBoxEvent extends Frame34850Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// Event for changing checkbox
class ChangeCheckBox1Event extends Frame34850Event {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
