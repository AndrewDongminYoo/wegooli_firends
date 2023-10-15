// ignore_for_file: must_be_immutable

part of 'k95_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K95 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K95Event extends Equatable {}

/// Event that is dispatched when the K95 widget is first created.
class K95InitialEvent extends K95Event {
  @override
  List<Object?> get props => [];
}
