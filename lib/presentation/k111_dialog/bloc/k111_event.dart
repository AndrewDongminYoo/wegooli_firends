// ignore_for_file: must_be_immutable

part of 'k111_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K111 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K111Event extends Equatable {}

/// Event that is dispatched when the K111 widget is first created.
class K111InitialEvent extends K111Event {
  @override
  List<Object?> get props => [];
}
