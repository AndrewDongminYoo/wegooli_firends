// ignore_for_file: must_be_immutable

part of 'k54_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K54 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K54Event extends Equatable {}

/// Event that is dispatched when the K54 widget is first created.
class K54InitialEvent extends K54Event {
  @override
  List<Object?> get props => [];
}

/// event for dropdown selection
class ChangeDropDownEvent extends K54Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// event for dropdown selection
class ChangeDropDown1Event extends K54Event {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/// event for dropdown selection
class ChangeDropDown2Event extends K54Event {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
