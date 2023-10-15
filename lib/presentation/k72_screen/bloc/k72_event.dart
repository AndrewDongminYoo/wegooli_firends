// ignore_for_file: must_be_immutable

part of 'k72_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K72 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K72Event extends Equatable {}

/// Event that is dispatched when the K72 widget is first created.
class K72InitialEvent extends K72Event {
  @override
  List<Object?> get props => [];
}
