// ignore_for_file: must_be_immutable

part of 'k57_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K57 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K57Event extends Equatable {}

/// Event that is dispatched when the K57 widget is first created.
class K57InitialEvent extends K57Event {
  @override
  List<Object?> get props => [];
}
