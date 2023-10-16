// ignore_for_file: must_be_immutable

part of 'k112_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K112 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K112Event extends Equatable {}

/// Event that is dispatched when the K112 widget is first created.
class K112InitialEvent extends K112Event {
  @override
  List<Object?> get props => [];
}
