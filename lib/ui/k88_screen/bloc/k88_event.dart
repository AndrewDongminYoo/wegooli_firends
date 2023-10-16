// ignore_for_file: must_be_immutable

part of 'k88_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K88 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K88Event extends Equatable {}

/// Event that is dispatched when the K88 widget is first created.
class K88InitialEvent extends K88Event {
  @override
  List<Object?> get props => [];
}
