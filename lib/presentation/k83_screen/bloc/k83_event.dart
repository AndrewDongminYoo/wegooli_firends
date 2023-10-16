// ignore_for_file: must_be_immutable

part of 'k83_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K83 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K83Event extends Equatable {}

/// Event that is dispatched when the K83 widget is first created.
class K83InitialEvent extends K83Event {
  @override
  List<Object?> get props => [];
}
