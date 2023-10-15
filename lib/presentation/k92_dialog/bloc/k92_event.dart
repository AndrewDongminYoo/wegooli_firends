// ignore_for_file: must_be_immutable

part of 'k92_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K92 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K92Event extends Equatable {}

/// Event that is dispatched when the K92 widget is first created.
class K92InitialEvent extends K92Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K92Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
