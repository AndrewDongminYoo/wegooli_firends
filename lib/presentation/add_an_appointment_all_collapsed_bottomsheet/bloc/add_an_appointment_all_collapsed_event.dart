// ignore_for_file: must_be_immutable

part of 'add_an_appointment_all_collapsed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddAnAppointmentAllCollapsed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddAnAppointmentAllCollapsedEvent extends Equatable {}

/// Event that is dispatched when the AddAnAppointmentAllCollapsed widget is first created.
class AddAnAppointmentAllCollapsedInitialEvent
    extends AddAnAppointmentAllCollapsedEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddAnAppointmentAllCollapsedEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
