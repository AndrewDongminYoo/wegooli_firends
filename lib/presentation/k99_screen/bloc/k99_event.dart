// ignore_for_file: must_be_immutable

part of 'k99_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K99 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K99Event extends Equatable {}

/// Event that is dispatched when the K99 widget is first created.
class K99InitialEvent extends K99Event {
  @override
  List<Object?> get props => [];
}
