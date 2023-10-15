// ignore_for_file: must_be_immutable

part of 'k73_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K73 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K73Event extends Equatable {}

/// Event that is dispatched when the K73 widget is first created.
class K73InitialEvent extends K73Event {
  @override
  List<Object?> get props => [];
}
