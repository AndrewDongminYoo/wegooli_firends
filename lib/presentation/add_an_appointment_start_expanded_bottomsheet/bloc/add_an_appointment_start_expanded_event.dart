// ignore_for_file: must_be_immutable

part of 'add_an_appointment_start_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddAnAppointmentStartExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddAnAppointmentStartExpandedEvent extends Equatable {}

/// Event that is dispatched when the AddAnAppointmentStartExpanded widget is first created.
class AddAnAppointmentStartExpandedInitialEvent
    extends AddAnAppointmentStartExpandedEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddAnAppointmentStartExpandedEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
