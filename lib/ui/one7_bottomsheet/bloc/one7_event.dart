// ignore_for_file: must_be_immutable

part of 'one7_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// One7 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One7Event extends Equatable {}

/// Event that is dispatched when the One7 widget is first created.
class One7InitialEvent extends One7Event {
  @override
  List<Object?> get props => [];
}

/// event for dropdown selection
class ChangeDropDownEvent extends One7Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
