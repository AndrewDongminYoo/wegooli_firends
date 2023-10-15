// ignore_for_file: must_be_immutable

part of 'add_an_appointment_end_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddAnAppointmentEndExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddAnAppointmentEndExpandedEvent extends Equatable {}

/// Event that is dispatched when the AddAnAppointmentEndExpanded widget is first created.
class AddAnAppointmentEndExpandedInitialEvent
    extends AddAnAppointmentEndExpandedEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddAnAppointmentEndExpandedEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends AddAnAppointmentEndExpandedEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
