// ignore_for_file: must_be_immutable

part of 'k56_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K56 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K56Event extends Equatable {}

/// Event that is dispatched when the K56 widget is first created.
class K56InitialEvent extends K56Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends K56Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
