// ignore_for_file: must_be_immutable

part of 'k65_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K65 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K65Event extends Equatable {}

/// Event that is dispatched when the K65 widget is first created.
class K65InitialEvent extends K65Event {
  @override
  List<Object?> get props => [];
}
