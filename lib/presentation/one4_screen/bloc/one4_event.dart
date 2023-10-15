// ignore_for_file: must_be_immutable

part of 'one4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One4Event extends Equatable {}

/// Event that is dispatched when the One4 widget is first created.
class One4InitialEvent extends One4Event {
  @override
  List<Object?> get props => [];
}
