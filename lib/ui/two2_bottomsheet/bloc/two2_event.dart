// ignore_for_file: must_be_immutable

part of 'two2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Two2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Two2Event extends Equatable {}

/// Event that is dispatched when the Two2 widget is first created.
class Two2InitialEvent extends Two2Event {
  @override
  List<Object?> get props => [];
}

/// event for dropdown selection
class ChangeDropDownEvent extends Two2Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
