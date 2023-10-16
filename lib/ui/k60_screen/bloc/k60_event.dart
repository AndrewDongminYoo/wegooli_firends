// ignore_for_file: must_be_immutable

part of 'k60_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K60 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K60Event extends Equatable {}

/// Event that is dispatched when the K60 widget is first created.
class K60InitialEvent extends K60Event {
  @override
  List<Object?> get props => [];
}
