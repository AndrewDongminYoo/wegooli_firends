// ignore_for_file: must_be_immutable

part of 'three1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Three1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Three1Event extends Equatable {}

/// Event that is dispatched when the Three1 widget is first created.
class Three1InitialEvent extends Three1Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends Three1Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends Three1Event {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
