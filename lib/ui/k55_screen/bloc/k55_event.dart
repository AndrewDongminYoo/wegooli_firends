// ignore_for_file: must_be_immutable

part of 'k55_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K55 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K55Event extends Equatable {}

/// Event that is dispatched when the K55 widget is first created.
class K55InitialEvent extends K55Event {
  @override
  List<Object?> get props => [];
}

/// event for dropdown selection
class ChangeDropDownEvent extends K55Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
