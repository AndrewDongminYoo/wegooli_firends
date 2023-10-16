// ignore_for_file: must_be_immutable

part of 'k62_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K62 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K62Event extends Equatable {}

/// Event that is dispatched when the K62 widget is first created.
class K62InitialEvent extends K62Event {
  @override
  List<Object?> get props => [];
}
