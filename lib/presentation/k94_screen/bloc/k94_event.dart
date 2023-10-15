// ignore_for_file: must_be_immutable

part of 'k94_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K94 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K94Event extends Equatable {}

/// Event that is dispatched when the K94 widget is first created.
class K94InitialEvent extends K94Event {
  @override
  List<Object?> get props => [];
}
