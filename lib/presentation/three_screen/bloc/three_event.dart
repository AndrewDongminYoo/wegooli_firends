// ignore_for_file: must_be_immutable

part of 'three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Three widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThreeEvent extends Equatable {}

/// Event that is dispatched when the Three widget is first created.
class ThreeInitialEvent extends ThreeEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing checkbox
class ChangeCheckBoxEvent extends ThreeEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
