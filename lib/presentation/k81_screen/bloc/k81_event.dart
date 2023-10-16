// ignore_for_file: must_be_immutable

part of 'k81_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K81 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K81Event extends Equatable {}

/// Event that is dispatched when the K81 widget is first created.
class K81InitialEvent extends K81Event {
  @override
  List<Object?> get props => [];
}
