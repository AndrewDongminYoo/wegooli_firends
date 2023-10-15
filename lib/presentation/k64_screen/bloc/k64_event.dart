// ignore_for_file: must_be_immutable

part of 'k64_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K64 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K64Event extends Equatable {}

/// Event that is dispatched when the K64 widget is first created.
class K64InitialEvent extends K64Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K64Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends K64Event {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends K64Event {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
