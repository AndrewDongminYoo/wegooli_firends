// ignore_for_file: must_be_immutable

part of 'one6_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One6 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One6Event extends Equatable {}

/// Event that is dispatched when the One6 widget is first created.
class One6InitialEvent extends One6Event {
  @override
  List<Object?> get props => [];
}
