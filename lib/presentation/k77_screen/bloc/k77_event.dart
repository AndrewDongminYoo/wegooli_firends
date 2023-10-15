// ignore_for_file: must_be_immutable

part of 'k77_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K77 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K77Event extends Equatable {}

/// Event that is dispatched when the K77 widget is first created.
class K77InitialEvent extends K77Event {
  @override
  List<Object?> get props => [];
}
