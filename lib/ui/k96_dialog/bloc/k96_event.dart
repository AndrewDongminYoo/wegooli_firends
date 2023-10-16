// ignore_for_file: must_be_immutable

part of 'k96_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K96 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K96Event extends Equatable {}

/// Event that is dispatched when the K96 widget is first created.
class K96InitialEvent extends K96Event {
  @override
  List<Object?> get props => [];
}
